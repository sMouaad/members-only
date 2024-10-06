class Post < ApplicationRecord
  belongs_to :user

  validates :title, :content, presence: true
  validates :title, length: { minimum: 2 }
  validates :content, length: { in: 10..200 }
end
