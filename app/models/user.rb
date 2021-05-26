class User < ApplicationRecord
  include Pay::Billable
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
    has_many :subscriptions
    has_many :reviews, through: :subscriptions
end