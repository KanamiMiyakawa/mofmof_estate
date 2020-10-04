このリポジトリはDICカリキュラムにおける株式会社mofmof様の技術面接課題の提出です
WEF2009 Miyakawa Kanami

Readmeを書こうかと思ったのですが、あまり書き方が分からず
私としては以下の仕様を実装できるように開発しました


###概要
開発環境はRuby2.6.5, Rails5.2.4

estateモデルで賃貸物件情報を扱う

estateのCRUD機能を完成

stationモデルで最寄り駅情報を扱う

estateの show, new, edit 画面にstationのフォームや表示を追加

readmeを完成する


###詳細
estateモデル：物件名、賃料、住所、築年数、備考

estateモデルはstationに対して親、一対多アソシエーション

estateの new, edit アクションからstationテーブルの登録も行う

stationモデル：路線名、駅名、徒歩分数

stationモデルはestateに対して子

最寄り駅は新規登録時は２つまでだが、編集画面ではつねに１つ新たに追加できるようにする

最寄り駅の表示の隣に、その物件において何個目の駅か数値を表示する
