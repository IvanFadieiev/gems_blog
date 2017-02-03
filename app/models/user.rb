class User < ApplicationRecord
  rolify
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :user_posts
  has_many :posts, through: :user_posts

  after_create :add_admin

  def add_admin
    if User.count.eql? 1
      User.first.add_role :admin
    end
  end
end
