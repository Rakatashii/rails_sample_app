class User < ApplicationRecord
  validates :name, presence: true, 
                   length: { maximum: 50 }
  # look @ name attribute. The 'presence: true' argument is a one-element options hash.
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*(?<!\.)\.[a-z]+\z/i
  # the 'i' modifier (case-insensitivity) is important here, since, for emails such as email = "foo@baz.com", email.downcase, email.upcase, and email.swapcase are all treated the same (well, really only the domain - i.e., ...@[DOMAIN].com, is treated the same)..
  # Updated text regexp to account for emails s.a. "foo@bar.baz..com" - previous expression allowed for more than one period. 
  validates :email, presence: true, 
                    length: { maximum: 100 }, 
                    format: { with: VALID_EMAIL_REGEX }, uniqueness: true, 
                    case_sensitive: false
# the :uniqueness validation is case sensitive by default. In order to ensure that duplicate_user fails when duplicate_user.email = @user.email.upcase, we must specify that we want uniqueness to be case insensitive with :case_sensitive set to false.
                    
end
