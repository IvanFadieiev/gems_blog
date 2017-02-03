class Post < ApplicationRecord
  default_scope { order(created_at: :desc) }
  belongs_to :category
  validates_presence_of :title, :link
end
