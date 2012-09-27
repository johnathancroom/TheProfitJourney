class AddDefaultsWhenNeeded < ActiveRecord::Migration
  def change
    do_change(::Refinery::Akouo::LastYear, :ly)
    do_change(::Refinery::Akouo::ProfitCenterLastYear, :pcly)
    do_change(::Refinery::Akouo::NextYear, :ny)
    do_change(::Refinery::Akouo::ProfitCenterNextYear, :pcny)
  end

  def do_change(model, table)
    model.columns.each do |column|
      if column.type == :float or column.type == :decimal
        change_column table, column.name, :decimal, :precision => 19, :scale => 2, :default => "0.00"
      end
    end
  end
end