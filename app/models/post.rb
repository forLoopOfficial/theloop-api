class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  validates_presence_of :body
  validates_presence_of :user


end
