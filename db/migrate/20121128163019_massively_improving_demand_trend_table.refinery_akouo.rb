# This migration comes from refinery_akouo (originally 56)
class MassivelyImprovingDemandTrendTable < ActiveRecord::Migration
  def change
    remove_columns :pcdt, [:dtj, :dtf, :dtm, :dta, :dtmy, :dtjn, :dtjl, :dtag, :dts, :dto, :dtn, :dtd]

    add_column :pcdt, :value, :decimal, :precision => 19, :scale => 2, :default => 0.0
    add_column :pcdt, :month, :date
  end

  def remove_columns(table, array)
    array.each do |value|
      remove_column table, value
    end
  end
end