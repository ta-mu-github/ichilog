アプリ名：<br>
「Ichilog」

<img width="1440" alt="スクリーンショット 2020-08-11 13 39 05" src="https://user-images.githubusercontent.com/64738234/89857849-1fbb2a00-dbd8-11ea-9136-730184d23a0d.png">



概要：<br>
あらゆる商品のレビューを投稿することができる記録サービスです。

・本番環境(デプロイ先　テストアカウント＆ID)：<br>
※まだデプロイが完了していません※
https://ichilog.herokuapp.com/


・制作背景(意図)：<br>
自分自身記録サービスとして利用したい、友人に利用してもらいという思いから作成しました。

・工夫したポイント：<br>
ビューの見た目が疎かにならないように工夫しました。
（トップページのタイトルはタイピング風に表示されるようにしたり、画像にカーソルを合わせた時画像が拡大されるようにしたりなど）

・使用技術(開発環境)：<br>
Ruby on Rails、jQuery、MySQL

・課題や今後実装したい機能：<br>
レスポンシブデザインの導入
AmazonAPIの導入
画像複数枚投稿機能の導入


・DB設計：<br>
## users(ユーザ)

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|profile_image|string||
|self_introduction|string||

### Association
- has_many :posts
- has_many :likes
- has_many :comments


## posts(投稿)

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|title|string|null: false|
|category|string|null: false|
|content|string|null: false|
|image|string|null: false|
|user_id|reference|null: false, foreign_key: true: { to_table: :users }|
|rate|string|null: false|

### Association
- belongs_to :user
- has_many   :likes


## likes(いいね)

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|reference|null: false, foreign_key: true|
|post_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post


## comments(コメント)

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|text|string|null: false|
|user_id|reference|null: false, foreign_key: true|
|post_id|reference|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :post






投稿一覧画面
<img width="1440" alt="スクリーンショット 2020-08-11 13 41 31" src="https://user-images.githubusercontent.com/64738234/89857950-627d0200-dbd8-11ea-9fd7-f9adbe894e36.png">

