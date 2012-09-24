class AddUserIdToNecessaryColumns < ActiveRecord::Migration
  def change
    add_column :cust, :user_id, :integer
    add_column :ly, :user_id, :integer
    add_column :pcly, :user_id, :integer
  end
end
