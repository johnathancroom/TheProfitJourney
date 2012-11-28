# This migration comes from refinery_akouo (originally 57)
class LastYearIsNotForProfitCenter < ActiveRecord::Migration
  def change
    rename_column :ly, :profit_center_id, :user_id
  end
end