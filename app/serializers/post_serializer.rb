class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :likes_count, :created_at
  belongs_to :user, counter_cache: true
end