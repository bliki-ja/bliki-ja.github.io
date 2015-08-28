http://martinfowler.com/bliki/ClockWrapper.html

コードのなかで現在のdateやtimeが必要になったとき、
システム ルーチンに直接アクセスしてはいけない。
ラッパーをかまして、現在のdateまたはtimeを、外から上書き設定できるようにしておこう。
これはテストをシンプルにするために重要なことだ。