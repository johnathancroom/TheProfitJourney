class CustRenameProfitCenterIdToUserId < ActiveRecord::Migration
  def change
    rename_column :cust, :profit_center_id, :user_id
  end
end