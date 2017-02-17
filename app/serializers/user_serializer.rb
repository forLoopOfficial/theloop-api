class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :posts_count, :likes_count
end