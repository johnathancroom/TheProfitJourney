class FixTypoInDmr < ActiveRecord::Migration
  def change
    rename_column :refinery_journeyboard_dmr_entries, :replacement_intalled, :replacement_installed
  end
end