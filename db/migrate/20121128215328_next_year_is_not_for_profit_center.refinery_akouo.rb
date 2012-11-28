# This migration comes from refinery_akouo (originally 58)
class NextYearIsNotForProfitCenter < ActiveRecord::Migration
  def change
    rename_column :ny, :profit_center_id, :user_id
  end
end