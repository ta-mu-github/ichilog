class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts    #投稿テーブルとのアソシエーション     
  has_many :comments #コメントテーブルとのアソシエーション
  has_many :likes    #いいねテーブルとのアソシエーション
end
