class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :user 

  def rating
    if self.guest < 5
      !self.guest
    else
      self.guest == @episode
    end
  end
end
