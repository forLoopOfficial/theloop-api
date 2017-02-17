class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include DeviseTokenAuth::Concerns::User
  validates_presence_of :name
  # validates_presence_of :username
  has_many :posts

  def token_validation_response
    UserSerializer.new(self, root: false)
  end
end
