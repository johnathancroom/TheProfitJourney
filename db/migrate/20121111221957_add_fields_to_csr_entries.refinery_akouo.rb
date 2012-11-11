# This migration comes from refinery_akouo (originally 53)
class AddFieldsToCsrEntries < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_csr_entries, :dollars_sold, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :refinery_journeyboard_csr_entries, :sales_calls_run, :integer, :default => 0
    add_column :refinery_journeyboard_csr_entries, :sales_calls_sold, :integer, :default => 0
  end
end