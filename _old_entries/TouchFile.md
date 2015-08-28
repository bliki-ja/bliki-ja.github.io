---
title: TouchFile
tags: TAGS
---

http://martinfowler.com/bliki/TouchFile.html

2007/4/26

[[make|http://en.wikipedia.org/wiki/Make]]を使ってビルドするときは、出力ファイルと入力ファイルの修正日を比較して、実行する必要があるかどうかを決める。コンパイルではこれでもうまくいく（a.outがfoo.cに依存している状態）。しかし、出力ファイルが不明なものもある。

たとえばテストの実行だ。テストにおける出力ファイルとは何だろうか？ひとつは、テストレポートだ。テストレポートはレポートファイルの日付を記録し、実行可能なテストデータファイルと比較する。この方法だと、何か変更があったときにテストを実行すればよい。

出力ファイルには有用な情報が含まれていることが多い。ただし、実行するかどうかを決めるのに出力ファイルの中身まで気にすることはしない。普通は日付だけを見る。 makeスクリプトで時間を記録するための空のファイルを使うことがよくある。私はこれを「touchファイル」と呼んでいる。 UNIXのtouchコマンド（ファイルの修正時刻を更新するコマンド）を使って操作するからだ。

touchファイルは複数のファイルの更新日を比較するのに役立つ。出力するファイルがツリー構造だった場合、ツリーをすべて見て回るよりもtouchファイルを更新したほうが格段に早い。

makeだとtouchファイルは一般的で自然な慣用法なのだが、[[ant|http://ant.apache.org/]]ではあまり見かけられない。ここ数日、HibernateのHQL [[DomainSpecificLanguage]]がどのように実装されているのか見ていたのだが、antにおいてもやはりtouchファイルは有用だということに気づいた。 HQLの肝は3つのAntlrパーサである。文法は3つの文法ファイルで定義されている。いずれかの文法ファイルが変更されると、パーサのソースコードが再生成される。

以下はantのソースだ。

 <target name="init.antlr" depends="init" description="Check ANTLR dependencies.">
  <uptodate property="antlr.isUpToDate" targetfile="${dir.out.antlr-package}/.antlr_run">
    <srcfiles dir="${dir.grammar}" includes="*.g"/>
  </uptodate>
 </target>

 <target name="antlr" depends="init.antlr" unless="antlr.isUpToDate" description="Generate ANTLR parsers.">
  <taskdef name="antlrtask" classname="org.apache.tools.ant.taskdefs.optional.ANTLR">
    <classpath>
      <fileset dir="${dir.lib}">
        <include name="ant-antlr-*.jar"/>
        <include name="antlr-*.jar"/>
      </fileset>
    </classpath>
  </taskdef>
  <mkdir dir="${dir.out.antlr-package}" />
  <antlrtask target="${dir.grammar}/hql.g" outputdirectory="${dir.out.antlr-package}" />
  <antlrtask target="${dir.grammar}/hql-sql.g" outputdirectory="${dir.out.antlr-package}" />
  <antlrtask target="${dir.grammar}/sql-gen.g" outputdirectory="${dir.out.antlr-package}" />
  <touch file="${dir.out.antlr-package}/.antlr_run"/>
 </target>

ここでは、init.antlrタスクでantlr.isUpToDateプロパティに .antlr_runファイルとの比較結果を設定している。メインのantlrタスクは、このプロパティがtrueであれば実行されない。タスクの最後に空の.antrl_runファイルをtouchしている。

Hibernateのメインビルドでは、このタスクが使用されている。つまり、パーサのソースファイルは必要なときだけ生成されるというわけだ。ファイルの生成を強制的に行うには、次のような別のtargetを作る。

 <target name="antlr.regen" depends="init,cleanantlr,antlr" description="Regenerate all ANTLR generated code." />
 
 <target name="cleanantlr" depends="init" description="Clean up the generated ANTLR parsers.">
  <delete dir="${dir.out.antlr-package}"/>
 </target>

ここでは、cleanAntlrタスクに依存することで目的を達成している。 init.antlrタスクには依存していない。それはantlrタスクで行っている。
