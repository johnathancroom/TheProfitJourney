class AddPriceToRefineryWorkshops < ActiveRecord::Migration
  def change
    add_column :refinery_workshops, :price, :decimal, :precision => 19, :scale => 2
  end
end
