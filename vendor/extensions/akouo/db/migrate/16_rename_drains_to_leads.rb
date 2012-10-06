class RenameDrainsToLeads < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_entries, :drains, :leads
  end
end