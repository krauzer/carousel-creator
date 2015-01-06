class AddConstraintsToPhotosTable < ActiveRecord::Migration
  def change
    change_column_null :photos, :image_id, false
  end
end
