class ChangeLeadsType < ActiveRecord::Migration
  def change
    change_column :refinery_journeyboard_entries, :leads, :integer
  end
end