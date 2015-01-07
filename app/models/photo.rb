class Photo < ActiveRecord::Base
  belongs_to :user
  attachment :image, type :image

end
