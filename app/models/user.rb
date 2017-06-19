class User < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  has_secure_password

end
