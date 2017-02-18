class Like < ApplicationRecord
  belongs_to :user, counter_cache:  true
  belongs_to :post, counter_cache:  true


  validates_presence_of :user
  validates_presence_of :post
  validates_uniqueness_of :user_id, scope: :post_id
end
