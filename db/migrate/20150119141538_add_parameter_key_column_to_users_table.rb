class AddParameterKeyColumnToUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :parameter_key, :integer
  end
end
