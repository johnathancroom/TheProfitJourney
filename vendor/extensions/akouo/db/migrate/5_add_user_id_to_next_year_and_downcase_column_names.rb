class AddUserIdToNextYearAndDowncaseColumnNames < ActiveRecord::Migration
  def up
    # Add user_id to tables
    add_column :ny, :user_id, :integer
    add_column :pcny, :user_id, :integer

    # Fix defaults
    rename_column :pcny, :PCNYID, :id
    remove_column :pcny, :PCID
    rename_column :ny, :NYID, :id
    remove_column :ny, :CID

    # Downcase
    columns = ::Refinery::Akouo::NextYear.column_names
    do_downcase(columns, :ny)
    columns = ::Refinery::Akouo::ProfitCenterNextYear.column_names
    do_downcase(columns, :pcny)
  end

  def down
    remove_column :ny, :user_id
    remove_column :pcny, :user_id

    rename_column :pcny, :id, :pcnyid
    add_column :pcny, :pcid, :integer
    rename_column :ny, :id, :nyid
    add_column :ny, :cid, :integer
  end

  def do_downcase(columns, model)
    columns.each do |c|
      rename_column model, c, c.downcase
    end
  end
end