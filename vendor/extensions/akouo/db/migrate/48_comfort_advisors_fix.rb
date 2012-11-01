class ComfortAdvisorsFix < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_entries, :sold, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :refinery_journeyboard_entries, :sales_calls_run, :integer, :default => 0
    add_column :refinery_journeyboard_entries, :sales_calls_sold, :integer, :default => 0

    ['replacement', 'repair', 'maintenance', 'specialty'].each do |x|
      add_column :refinery_journeyboard_budgets, :"#{x}_sold", :decimal, :precision => 19, :scale => 2, :default => 0.0
      add_column :refinery_journeyboard_budgets, :"#{x}_sales_calls_run", :integer, :default => 0
      add_column :refinery_journeyboard_budgets, :"#{x}_sales_calls_sold", :integer, :default => 0
    end
  end
end