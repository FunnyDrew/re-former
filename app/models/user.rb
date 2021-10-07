class User < ApplicationRecord
validates :username, presence: true
validates :email, presence: true
validates :password, presence: true, length: {minimum: 3}
end
