class Post < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :category
    validates :content
  end

  belongs_to :user

  mount_uploader :image, ImageUploader

end
