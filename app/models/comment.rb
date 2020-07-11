class Comment < ApplicationRecord
  belongs_to :post #投稿テーブルとのアソシエーション
  belongs_to :user  #ユーザテーブルとのアソシエーション
end
