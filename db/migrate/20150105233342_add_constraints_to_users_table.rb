class AddConstraintsToUsersTable < ActiveRecord::Migration
  def change
    change_column_null :users, :email, false
    change_column_null :users, :password_hash, false
  end
end
