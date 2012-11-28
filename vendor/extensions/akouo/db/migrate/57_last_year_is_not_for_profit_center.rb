class LastYearIsNotForProfitCenter < ActiveRecord::Migration
  def change
    rename_column :ly, :profit_center_id, :user_id
  end
end