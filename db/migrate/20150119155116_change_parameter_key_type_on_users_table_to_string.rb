class ChangeParameterKeyTypeOnUsersTableToString < ActiveRecord::Migration
  def change
    change_column :users, :parameter_key, :string
  end
end
