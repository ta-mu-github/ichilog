class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts    #投稿テーブルとのアソシエーション     
  has_many :comments #コメントテーブルとのアソシエーション
  has_many :likes    #いいねテーブルとのアソシエーション

  #フォロー機能
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_relationships, source: :user


  mount_uploader :profile_image, ImageUploader

  def self.search(search)
    if search
      User.where(['user_name LIKE ?', "%#{search}%"])
    else
      User.all
    end
  end

end
