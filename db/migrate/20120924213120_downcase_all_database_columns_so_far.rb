class DowncaseAllDatabaseColumnsSoFar < ActiveRecord::Migration
  def up
    columns = ::Refinery::Akouo::Customer.column_names
    do_downcase(columns, :cust)

    columns = ::Refinery::Akouo::LastYear.column_names
    do_downcase(columns, :ly)

    columns = ::Refinery::Akouo::ProfitComparisonLastYear.column_names
    do_downcase(columns, :pcly)
  end

  def do_downcase(columns, model)
    columns.each do |c|
      rename_column model, c, c.downcase
    end
  end
end
