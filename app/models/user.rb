class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  # look @ name attribute. The 'presence: true' argument is a one-element options hash.
  validates :email, presence: true, length: { maximum: 100 }
end
