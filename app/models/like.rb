class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post


  validates_presence_of :user
  validates_presence_of :post
  validates_uniqueness_of :user_id, scope: :post_id
end
