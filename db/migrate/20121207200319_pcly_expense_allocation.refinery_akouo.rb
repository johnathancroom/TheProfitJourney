# This migration comes from refinery_akouo (originally 59)
class PclyExpenseAllocation < ActiveRecord::Migration
  def change
    add_column :pcly, :expense_allocation, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end