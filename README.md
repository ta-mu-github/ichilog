アプリ名：
# 「Ichilog」

<img width="1440" alt="スクリーンショット 2020-08-18 12 45 00" src="https://user-images.githubusercontent.com/64738234/90468067-acbe3000-e150-11ea-981e-14244d4787a4.png">



## 概要：<br>
あらゆる商品のレビューを投稿することができるアプリです。<br>
自分の好きなもの、良くなかったものを本アプリに記録して、<br>
記録サービスとして使用するも良し、誰かと好きなもので繋がるも良しという想定で作成しました。

・本番環境：<br>
https://ichilog.herokuapp.com/
<br>
テスト用アカウント:：<br>
メールアドレス：testuser@test.co.jp<br>
パスワード：Test123


## 制作背景(意図)：<br>
制作した理由は大きく分けて2点あります。<br>
1点目は、自分自身記録サービスとして利用したかったということ。<br>
2点目は、友人に利用してもらいという思いから作成しました。<br>
アプリ名の「Ichilog」の「Ichi」は友人の名前から取っています。

## 工夫したポイント：<br>
ビューの見た目が疎かにならないように工夫しました。<br>
（トップページのタイトルはタイピング風に表示されるようにしたり、画像にカーソルを合わせた時画像が拡大されるようにしたりなど）

## 使用技術(開発環境)：<br>
・Ruby on Rails<br>
・jQuery<br>
・MySQL

## 課題や今後実装したい機能：<br>
・投稿非公開機能<br>
・フォロー機能<br>
・ランディングページの作成<br>
・レスポンシブデザイン<br>
・AmazonAPIの導入<br>
・画像複数枚投稿機能の導入


## DB設計：<br>
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
- has_many :relationships


## posts(投稿)

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|title|string|null: false|
|category|string||
|content|string|null: false|
|image|string||
|user_id|reference|null: false, foreign_key: true|
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


## relationships(フォロー)

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user_id|reference|null: false, foreign_key: true|
|follow_id|reference|null: false, foreign_key: true: { to_table: :users }|

### Association
- belongs_to :user


### トップページ
![ダウンロード](https://user-images.githubusercontent.com/64738234/90467629-a4192a00-e14f-11ea-8434-0a3c49a0d123.gif)

### 投稿一覧画面
<img width="1440" alt="スクリーンショット 2020-08-11 13 41 31" src="https://user-images.githubusercontent.com/64738234/89857950-627d0200-dbd8-11ea-9fd7-f9adbe894e36.png">

