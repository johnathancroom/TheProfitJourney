# This migration comes from refinery_workshops (originally 5)
class RemovePriceFromRefineryWorkshops < ActiveRecord::Migration
  def change
    remove_column :refinery_workshops, :price
  end
end
