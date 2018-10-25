class User < ApplicationRecord
  enum role: [:admin, :user]
  has_one :company

  validates_presence_of :email, :password_digest
  validates :email, uniqueness: true

  has_secure_password
end
