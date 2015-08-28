""※現在、翻訳中です。しばらくお待ちください。

はじめに、言語指向プログラミングの例と、それを使用する状況とをあわせて見ていきたいと思います。
ファイルを読み込むシステムがあるとします。
このシステムはファイルを基にオブジェクトを作成します。
ファイルフォーマットは1行につき1オブジェクトとなっています。
各行はそれぞれ別々のクラスにマッピングされます。
クラスは行頭の4文字のコードで識別されます。
残りのデータはクラスのフィールドになります。
このデータは扱うクラスによって異なります。
フィールドはデリミタではなく、場所によって指し示されます。
たとえば、顧客ID番号は4文字目から8文字目にある、といった具合です。

以下がサンプルデータです。

 #123456789012345678901234567890123456789012345678901234567890
 SVCLFOWLER         10101MS0120050313.........................
 SVCLHOHPE          10201DX0320050315........................
 SVCLTWO           x10301MRP220050329..............................
 USGE10301TWO          x50214..7050329...............................

ドットには何らかのデータが入っていると思ってください。
1行目のコメントは文字位置を見やすくするためのものです。
行頭からの4文字はデータの種類を表しています——SVCLは「service call」、USGEはレコードの「usage」です。
それに続く文字は、オブジェクトのデータです。
service callの5文字目から18文字目にある文字列は{{fn('訳注：コメント行は0から始まっているから分かりにくいです。')}}、顧客名を表しています。

このデータをオブジェクトに変換するのにそれぞれ別々のコードを書きたくなるかもしれませんが、これからはreaderクラスを作ってタスクを単純化するようになってください。
readerクラスは、各クラスのフィールドの詳細を使ってパラメータ化することができます。

以下に簡単なreaderクラスを用意しました。readerクラスはファイルを読み込みます。
readerクラスはreader strategyクラスのコレクションを使ってパラメータ化できます——各ターゲットクラスごとにreader strategyクラスが存在します。
この例ですと、service callにひとつ、usageにひとつのstrategyが必要となります。
ここではコード（SVCL、USGE）をキーにしたMapでstrategyを保持しています。

以下がファイルを処理するコードです。

 class Reader...
     public IList Process(StreamReader input) {
       IList result = new ArrayList();
       string line;
       while ((line = input.ReadLine()) != null)
         ProcessLine(line, result);
       return result;
     }
 
     private void ProcessLine(string line, IList result) {
       if (isBlank(line)) return;
       if (isComment(line)) return;
       string typeCode = GetTypeCode(line);
       IReaderStrategy strategy = (IReaderStrategy)_strategies[typeCode];
       if (null == strategy) 
         throw new Exception("Unable to find strategy");
       result.Add(strategy.Process(line));
     }
     private static bool isComment(string line) {
       return line[0] == '#';
     }
     private static bool isBlank(string line) {
       return line == "";
     }
     private string GetTypeCode(string line) {
       return line.Substring(0,4);
     }
     IDictionary _strategies = new Hashtable();
     public void AddStrategy(IReaderStrategy arg) {
       _strategies[arg.Code] = arg;
     }

ここでは行をループし、該当箇所を読み込み、どのstrategyを呼び出せばよいかを判断して、各strategyに処理を任せています。
こうした処理を行わせるには、新しいreaderクラスをインスタンス化し、strategyを読み込ませ、処理したいファイルと分離しておきます。

strategyクラスもパラメータ化できます。必要なstrategyクラスは1つです。
strategyクラスをインスタンス化する際に、コード、ターゲットクラス、およびインプットされた文字位置がクラスのどのフィールドにマッピングされるかという情報を使ってパラメータ化します。文字の情報は、field extractorクラスのリストに保持します。

 class ReaderStrategy...
     private string _code;
     private Type _target;
     private IList extractors = new ArrayList();
     public ReaderStrategy(string code, Type target) {
       _code = code;
       this._target = target;
     }
     public string Code {
       get { return _code; }
     }

strategyをインスタンス化した後で、field extractorを追加します。

 class ReaderStrategy...
     public void AddFieldExtractor(int begin, int end, string target) {
       if (!targetPropertyNames().Contains(target)) 
         throw new NoFieldInTargetException(target, _target.FullName);
       extractors.Add(new FieldExtractor(begin, end, target));
     }
     private IList targetPropertyNames() {
       IList result = new ArrayList();
       foreach (PropertyInfo p in _target.GetProperties())
         result.Add(p.Name);
       return result;
     }

strategyはターゲットクラスを生成し、extractorを使ってフィールドデータを読み込み、行を処理します。

 class ReaderStrategy...
     public object Process(string line) {
       object result = Activator.CreateInstance(_target);
       foreach (FieldExtractor ex in extractors)
         ex.extractField(line, result);
       return result;
     }

extractorは該当する行から指定されたビット部分を抜き出し、
リフレクションを使ってターゲットオブジェクトに値を埋め込んでいます。

 class ReaderStrategy...
       private int _begin, _end;
       private string _targetPropertyName;
       public FieldExtractor(int begin, int end, string target) {
         _begin = begin;
         _end = end;
         _targetPropertyName = target;
       }
       public void extractField(string line, object targetObject) {
         string value = line.Substring(_begin, _end - _begin + 1);
         setValue(targetObject, value);
       }
       private void setValue(object targetObject, string value) {
         PropertyInfo prop = targetObject.GetType().GetProperty(_targetPropertyName);
         prop.SetValue(targetObject, value, null);
       }

これまで説明したのは、非常に簡単なライブラリです。
基本的に、まず抽象的なものを作り、それを使って具体的な作業をすることになります。
抽象的なものを使うには、strategyを設定し、readerにロードする必要があります。
以下が2つのケース（service callとusage）の例です。

     public void Configure(Reader target) {
       target.AddStrategy(ConfigureServiceCall());
       target.AddStrategy(ConfigureUsage());
     }
     private ReaderStrategy ConfigureServiceCall() {
       ReaderStrategy result = new ReaderStrategy("SVCL", typeof (ServiceCall));
       result.AddFieldExtractor(4, 18, "CustomerName");
       result.AddFieldExtractor(19, 23, "CustomerID");
       result.AddFieldExtractor(24, 27, "CallTypeCode");
       result.AddFieldExtractor(28, 35, "DateOfCallString");
       return result;
     }
     private ReaderStrategy ConfigureUsage() {
       ReaderStrategy result = new ReaderStrategy("USGE", typeof (Usage));
       result.AddFieldExtractor(4, 8, "CustomerID");
       result.AddFieldExtractor(9, 22, "CustomerName");
       result.AddFieldExtractor(30, 30, "Cycle");
       result.AddFieldExtractor(31, 36, "ReadDate");
       return result;
     }

以上のコードは2つのスタイルに分かれています。
readerクラスとstrategyクラスは抽象的なコードです。
一方、最後のコードは具体的なコードです。
こうしたライブラリ クラスを構築する際は、
抽象的な部分と具体的な部分の2つに分けて考えるとよいでしょう。
抽象的な部分は、クラスライブラリやフレームワーク、関数呼び出しなどになります。
この部分は多くのプロジェクトで再利用可能です（再利用しなくてはならないという意味ではありません）。
設定コードは具体的な部分になります。
抽象的な部分よりシンプルで、素直なコードになっています。

設定コードは非常にシンプルですが、抽象的な部分に比べて変更されることが多くなります。
設定コードをC#から完全に切り離してしまうことがよく行われます。
XMLファイルにするのが今の流行りです。

 <ReaderConfiguration>
   <Mapping Code = "SVCL" TargetClass = "dsl.ServiceCall">
     <Field name = "CustomerName" start = "4" end = "18"/>
     <Field name = "CustomerID" start = "19" end = "23"/>
     <Field name = "CallTypeCode" start = "24" end = "27"/>
     <Field name = "DateOfCallString" start = "28" end = "35"/>
   </Mapping>
   <Mapping Code = "USGE" TargetClass = "dsl.Usage">
     <Field name = "CustomerID" start = "4" end = "8"/>
     <Field name = "CustomerName" start = "9" end = "22"/>
     <Field name = "Cycle" start = "30" end = "30"/>
     <Field name = "ReadDate" start = "31" end = "36"/>
   </Mapping>
 </ReaderConfiguration>

XMLはそれなりに便利ではありますが、可読性があるとはいえません。
カスタムシンタックスを使うことで、可読性を上げることができます。
たとえば、以下のような感じです。

 mapping SVCL dsl.ServiceCall
   4-18: CustomerName
   19-23: CustomerID
   24-27 : CallTypeCode
   28-35 : DateOfCallString
 
 mapping  USGE dsl.Usage
   4-8 : CustomerID
   9-22: CustomerName
   30-30: Cycle
   31-36: ReadDate

この問題には慣れていると思いますので、ヘルプなしに構文を読めると思います。

最後の例で見たように、ここで紹介したのは小さなプログラミング言語です。
固定長のデータをクラスにマッピングする（だけの）プログラミング言語です。
Unixでいう「リトル言語」の典型的な例です。
マッピングするというタスクのドメイン特化言語です。

この言語はドメイン特化言語ですから、ドメイン特化言語の性質の多くを伴っています。
まず、非常に限定された目的にのみ適していることです。
固定長のレコードをクラスにマッピングすることしかできません。
結果としてDSLは非常にシンプルになります——制御構造もありません。
Turing completeですらありません。
この言語で完全なアプリケーションを書くことはできません。
できるのは、アプリケーション全体のちょっとした部分だけです。
つまり、DSLで何かを成し遂げるためには、他の言語と組み合わせなければなりません。
ただ、DSLはシンプルが故に、編集や変換が行いやすくなっています。
（DSLの長所と短所については後から詳しく述べていきます。）

XMLを見てみてください。これはDSLでしょうか？ DSLですね。
XML構文ではありますが、やはりDSLです。いろんな意味で、前の例と同じDSLです。

いい機会ですから、プログラミング言語のよくある違いを紹介しておきましょう——「抽象的な構文」と「具体的な構文」との違いです。
具体的な構文は、目に見える構文です。
先ほどのXMLやカスタム言語ファイルは、具体的な構文は異なりますが、両方とも同じ構造を持っています——複数のmappingがあり、コードがあり、ターゲットクラスの名前があり、フィールドがあるわけです。
この基本的な構造が、抽象的な構文です。
プログラミング言語の構文を考える際、多くの開発者はこの違いを意識していません。
しかし、DSLを使う際にはこの違いが重要となります。
DSLでは、具体的な構文を2つ持つ言語が1つある、または、抽象的な構文を共有した言語が2つある、
という風に考えることができます。

この例では、具体的なカスタム構文を使えばいいのか、具体的なXML構文を使えばいいのかという設計上の問題がでてきます。
XML構文の方が多くのツールがあるのでパースしやすいとは思いますが、
ここではカスタム構文の方がパースは簡単です。
さらに（少なくともここでは）カスタム構文の方が読みやすいと思います。
ただ、いずれにしてもDSLのコアとなるトレードオフは同じです。
XML設定ファイルはすべてDSLだと言うことができます。

さて、さらに前のC#で書かれた設定コードに戻りましょう。
この設定コードはDSLでしょうか？

答えを考えながら、以下のコードを見てください。
このコードは、この問題のためのDSLでしょうか？

 mapping('SVCL', ServiceCall) do
 	extract 4..18, 'customer_name'
 	extract 19..23, 'customer_ID'
 	extract 24..27, 'call_type_code'
 	extract 28..35, 'date_of_call_string'
 end
 mapping('USGE', Usage) do
 	extract 9..22, 'customer_name'
 	extract 4..8, 'customer_ID'
 	extract 30..30, 'cycle'
 	extract 31..36, 'read_date'
 end

上のコードは、C#の設定コードと関係があります。
私の好きな言語を知っているひとは想像がつくかもしれませんが、これはRubyのコードです。
これは、C#の例とまったく同等のコードです。
カスタムDSLのように見えるかもしれませんが、
それは、押し付けがましくない構文、rangeリテラル、柔軟性のある実行時評価などといったRubyの機能のためです。
これはオブジェクトのインスタンス スコープを実行時に読み込み、評価することのできる完全な設定ファイルです。
しかもこれは、ピュアRubyなコードでもあり、{{code('mapping')}}や{{code('extract')}}メソッド（C#の例における{{code('AddStrategy')}}や{{code('AddFieldExtractor')}}メソッド）への呼び出しを行うことで、フレームワークと連携しています。

C#の例もRubyの例も、どちらもDSLです。
どちらの場合も、ホストとなる言語の機能のサブセットを使い、
XML構文に対してカスタム構文を作ったようなことを行っています。
つまり、DSLをホスト言語に組み込み、ホスト言語のサブセットを抽象的な言語のカスタム構文として使っているのです。
これはおそらく考え方の問題なのだと思います。
私は、言語指向プログラミングというメガネを通して、C#やRubyのコードを見ています。
これは、古くからある視点です。例えばLispプログラマは、Lispの中にDSLを作ることを昔から行っています。
こうした内部DSLのトレードオフは、外部DSLのそれとは明らかに異なります。
しかし、類似点も多々あります。（このトレードオフについては後ほど詳しく述べます。）

さて、DSLの例を紹介しましたが、これでうまく言語指向プログラミングを定義することができます。
言語指向プログラミングとは、複数のDSLを使ってシステムを記述することです。
システムの機能の一部をDSLで表すような、小さな言語指向プログラミングを使ってもいいでしょうし、
ほとんどの機能をDSLで表すような、大きな言語指向プログラミングを使ってもいいでしょう。これは段階的なものです。
言語指向プログラミングをどれくらい使っているか計測するのは、特に言語内DSLを使っている場合だと、難しいと思います。
再利用可能なコードのように、DSLを自分で書いておいて、別のDSLから使用するというのはよくやることですから。
