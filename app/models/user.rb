class User < ApplicationRecord
  attribute :email,:string
  attribute :password,:string

  validates :email,presence: true,format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :password, presence: true, length: { minimum: 8 }
end
