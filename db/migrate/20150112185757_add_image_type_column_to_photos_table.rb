class AddImageTypeColumnToPhotosTable < ActiveRecord::Migration
  def change
        add_column :photos, :image_content_type, :string
  end
end
