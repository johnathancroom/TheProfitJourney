# This migration comes from refinery_akouo (originally 55)
class FixDemandTrendTable < ActiveRecord::Migration
  def change
    rename_column :pcdt, :PCID, :profit_center_id
    rename_column :pcdt, :DTID, :id

    columns = ::Refinery::Akouo::DemandTrend.column_names
    do_downcase(columns, :pcdt)
  end

  def do_downcase(columns, model)
    columns.each do |c|
      rename_column model, c, c.downcase
    end
  end
end