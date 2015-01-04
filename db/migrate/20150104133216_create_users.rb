class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |table|
      t.string :email
      t.string :name
    end
  end
end
