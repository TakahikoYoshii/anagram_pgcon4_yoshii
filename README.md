anagram_pgcon4_yoshii
=====================
CoffeeScriptで作成

起動方法

⑴node.js npm 導入

⑵プロジェクトのルートディレクトリでコマンド　$npm install （もしかしたらsudoが必要）

⑶プロジェクトのルートディレクトリでコマンド　$grunt

⑷プロジェクトのルートディレクトリでコマンド　$node lib/main.js で起動

仕様

⑴ある文字列の部分文字列が回文になっているかどうかを判定して、含まれている回文の部分文字列の数を返します

⑵正常系のみ実装、異常系は落ちます

⑶入力例）

	3
	
	abcde

	pepper
	
	aaaaa
	
一番上に入れる単語数、その数だけの単語を入れてEnter２回　で結果が表示されます。

終了するときは 'exit' と入力してEnter

それ以外は落ちます。

使用したツール

⑴実装 CoffeeScript node.js

⑵テスト mocha should.js

⑶ビルド Grunt

