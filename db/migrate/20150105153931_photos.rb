class Photos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_id
      t.string :image_name
      t.references :user, index: true

      t.timestamps
    end
  end
end
