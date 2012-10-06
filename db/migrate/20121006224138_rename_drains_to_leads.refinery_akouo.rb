# This migration comes from refinery_akouo (originally 16)
class RenameDrainsToLeads < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_entries, :drains, :leads
  end
end