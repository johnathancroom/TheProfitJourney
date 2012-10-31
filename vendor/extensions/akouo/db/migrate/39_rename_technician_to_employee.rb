class RenameTechnicianToEmployee < ActiveRecord::Migration
  def change
    rename_table :refinery_journeyboard_technicians, :refinery_journeyboard_employees

    rename_column :refinery_journeyboard_entries, :technician_id, :employee_id
  end
end