class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :validatable, :registerable,
         :recoverable, :rememberable
  include DeviseTokenAuth::Concerns::User
end
