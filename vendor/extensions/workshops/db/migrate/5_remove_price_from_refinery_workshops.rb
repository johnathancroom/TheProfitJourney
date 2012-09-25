class RemovePriceFromRefineryWorkshops < ActiveRecord::Migration
  def change
    remove_column :refinery_workshops, :price
  end
end
