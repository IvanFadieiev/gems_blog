class Post < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :category
  has_many :user_posts
  has_many :users, through: :user_posts
  validates_presence_of :title, :link
end
