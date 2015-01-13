class Photo < ActiveRecord::Base
  belongs_to :user
  attachment :image, type: :image, raise_errors: true

end
