class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :category
    validates :content
  end

  belongs_to :user   #ユーザテーブルとのアソシエーション
  has_many :comments #コメントテーブルとのアソシエーション

  mount_uploader :image, ImageUploader

  def self.search(search)
    if search
      Post.where(['title LIKE ?', "%#{search}%"])
    else
      Post.all
    end
  end

end
