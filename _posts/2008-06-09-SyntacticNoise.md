---
title: 構文ノイズ
tags: [language feature, domain specific language]
---

http://www.martinfowler.com/bliki/SyntacticNoise.html



[ドメイン特化言語](/DomainSpecificLanguage)について話していると（DSLに限らずあらゆるコンピュータ言語でそうなんだけど）、構文にノイズがあるって話をよく聞く。 RubyはJavaよりもノイズが少ないとか、外部DSLは内部DSLよりノイズが少ないとか。構文ノイズっていうのは、言語としての記述には必要だけど、プログラマがやりたいことには関係のない文字のことだ。ノイズ文字はプログラムの意図をぼかしてしまうため、プログラムの動作を読み解かなければならなくなってしまう。

「構文ノイズ」という言葉も意味があいまいで主観的な言葉なので、ちょっと使いにくかったりする。ちょっと前にGilhad BrahaがJAOOで構文ノイズについて説明しようとしていたが、私も同じようにやってみたいと思う。[[DSL本のイントロダクション](http://martinfowler.com/dslwip/Intro.html)で使ったDSLに適用してみたいと思う（ここの誌面を考えて、状態マシンの例の一部分だけを使っている）。

彼は自分がノイズだと思う文字に色をつけていた。ここで問題となるのは、何をもってノイズ文字とするかである。しかし、ここではそれを定義することは避け、違った分け方をしようと思う。それぞれ「ドメインテキスト」と「句読点」と呼びたい。ここで使っているDSLスクリプトは状態マシンを定義したものなので、 states、events、commandsが存在している。この状態マシンについての情報を記述するもの（状態名など）は、ドメインテキストで定義することにした。それ以外は句読点であり、赤字にしてある。

外部DSLのカスタム構文から始めよう。

```
events

  doorClosed  D1CL
  drawOpened  D2OP
  lightOn     L1ON

end

   

commands

  unlockDoor D1UL
  lockPanel   PNLK

end

   

state
 idle
  
actions
 
{
unlockDoor lockPanel
}

  doorClosed 
=>
 active

end

   

state
 active
  drawOpened 
=>
 waitingForLight
  lightOn    
=>
 waitingForDraw

end
```

カスタム構文はノイズを最小化できるので、ここでは句読点があまり見られない。このテキストでは、必要な句読点がはっきりと分かる。 eventsとcommandsは、その名前とコードで定義されている——それぞれを区別するために句読点が必要である。句読点はノイズと等価ではない。間違った句読点や多すぎる句読点がノイズなのだと言えよう。句読点の絶対数を最小にすればいいというわけではない。句読点が少なすぎると、DSLが理解しにくくなる。

次は同じドメイン情報の内部DSLをRubyで書いたものである。

```ruby
event :
doorClosed
, "
D1CL
"
  

event :
drawOpened
,  "
D2OP
"
  

event :
lightOn
, "
L1ON
"
  


command  :
lockPanel
,   "
PNLK
"
 

command  :
unlockDoor
,  "
D1UL
"
 


state :
idle
 do
 
  
actions :
unlockDoor
, :
lockPanel
  
transitions :
doorClosed
 => :
active

end
 


state :
active
 do
 
 
 transitions :
drawOpened
 => :
waitingForLight
,
 
              
:
lightOn
 => :
waitingForDraw

end
```

句読点が増えたのが分かるだろう。句読点をもっと減らすこともできるかもしれないが、カスタム構文よりRubyで書いたDSLのほうが句読点が多くなることは理解していただけるのではないだろうか。ノイズ（私にとってのノイズ）はそれほどない。シンボルを示す「:」、引数を区切る「,」、文字列の引用符「&quot;」くらいだ。

私は、DSLとはフレームワークに息を吹き込む術だと考えている。ここでは、フレームワークは状態マシンを記述している。 DSLだけでなく、プッシュボタン式のAPIを使うこともできる。それでは、句読点を色づけしてみよう。

```
Event doorClosed = new Event("
doorClosed
", "
D1CL
");
 

Event drawOpened = new Event("
drawOpened
", "
D2OP
");
 

Event lightOn = new Event("
lightOn
", "
L1ON
");
 
 

Command lockPanelCmd = new Command("
lockPanel
", "
PNLK
");
 

Command unlockDoorCmd = new Command("
unlockDoo
r", "
D1UL
");
 


State idle = new State("
idle
");
 

State activeState = new State("
active
");
 
 

StateMachine machine = new StateMachine(
idle
);
 

idle
.addTransition(
doorClosed
,
 activeState
);

idle
.addCommand(
unlockDoorCmd
);

idle
.addCommand(
lockPanelCmd
);


activeState
.addTransition(
drawOpened
, 
waitingForLightState
);

activeState
.addTransition(
lightOn
, 
waitingForDrawState
);
```

句読点が多くなった。引用符や括弧以外にも、メソッドキーワードやローカル変数の宣言が見られる。後者の分類は興味深い。ローカル変数は宣言の部分では句読点にカウントされているが、あとでドメインテキストとしてカウントされている（名前は同じなのに）。

Javaでも流れるように記述できる。以下はDSL本の流れるバージョンだ。

```java
public class BasicStateMachine extends StateMachineBuilder {
 
  
Events
 doorClosed
, 
drawOpened
,
 lightOn
;
 
  
Commands
 lockPanel
,
 unlockDoor
;
 
  
States 
idle
,
 active
;
 

 
 protected void defineStateMachine() {
 
    doorClosed
. code("
D1CL
");
 
    drawOpened
. code("
D2OP
");
 
    lightOn
.    code("
L1ON
");
 

    lockPanel
.  code("
PNLK
");
 
    unlockDoor
. code("
D1UL
");
 
 
    idle 
       
 .actions(
unlockDoor
,
 lockPanel
)
 
       
 .transition(
doorClosed
).to(
active
)
 
        
;
 
 
    active 
       
 .transition(
drawOpened
).to(
waitingForLight
)
 
       
 .transition(
lightOn
).   to(
waitingForDraw
)
 
 
       ; 
 }
```

例をいくつか集めたら、必ずやってくるのはXMLだ。

```xml
<stateMachine start = "
idle
">
 

    <event name="
doorClosed
" code="
D1CL
"/> 
 

    <event name="
drawOpened
" code="
D2OP
"/>
 

    <event name="
lightOn
" code="
L1ON
"/>
 


    <command name="
lockPanel
" code="
PNLK
"/>
 

    <command name="
unlockDoor
" code="
D1UL
"/>
 


  <state name="
idle
">
 

    <transition event="
doorClosed
" target="
active
"/>
 

    <action command="
unlockDoor
"/>
 

    <action command="
lockPanel
"/>
 

  </state>
 


  <state name="
active
">
 

    <transition event="
drawOpened
" target="
waitingForLight
"/>
 

    <transition event="
lightOn
" target="
waitingForDraw
"/>
 
 
 </state>
</stateMachine>
```

この例だと、あまり深いところまでは読み取れないかもしれない。だけど、何らかの思考の糧にはなるんじゃないだろうか。私は、句読点とノイズを明確に分けられるとは思っていない。しかし、ドメインテキストと句読点を区別することで、句読点に集中できるようになるし、句読点の効用についても気づくことができるだろうと思う。 DSLのなかにドメインテキストよりも句読点の文字の方が多いと、それは不吉な臭いだということも付け加えておこう。

(Mikael Jansson が[[lispバージョン](http://mikael.jansson.be/journal/2008/06/martin-fowlers-syntactic-noise)を作ってくれた。Mihailo Lalevicが[JavaScriptバージョン](http://digitalmihailo.blogspot.com/2008/06/martin-fowlers-syntactic-noise-in.html)を作ってくれた。)
