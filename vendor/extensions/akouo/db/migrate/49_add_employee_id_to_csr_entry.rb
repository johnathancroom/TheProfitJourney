class AddEmployeeIdToCsrEntry < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_csr_entries, :employee_id, :integer
  end
end