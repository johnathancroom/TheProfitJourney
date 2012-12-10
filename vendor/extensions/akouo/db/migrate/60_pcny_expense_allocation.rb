class PcnyExpenseAllocation < ActiveRecord::Migration
  def change
    add_column :pcny, :expense_allocation, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end