# This migration comes from refinery_akouo (originally 8)
class FixRelationships < ActiveRecord::Migration
  def change
    rename_column :pc, :PCID, :id
    rename_column :pc, :PCN, :pcn
    rename_column :pc, :CID, :user_id

    rename_column :cust, :user_id, :profit_center_id
    rename_column :ly, :user_id, :profit_center_id
    rename_column :pcly, :user_id, :profit_center_id
    rename_column :ny, :user_id, :profit_center_id
    rename_column :pcny, :user_id, :profit_center_id
  end
end