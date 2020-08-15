class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts    #投稿テーブルとのアソシエーション     
  has_many :comments #コメントテーブルとのアソシエーション
  has_many :likes    #いいねテーブルとのアソシエーション

  mount_uploader :profile_image, ImageUploader

  def self.search(search)
    if search
      User.where(['user_name LIKE ?', "%#{search}%"])
    else
      User.all
    end
  end

end
