class ChangeImageNameColumnOnPhotoTableToImageFilename < ActiveRecord::Migration
  def change
    change_table :photos do |t|
      t.rename :image_name, :image_filename
    end
  end
end
