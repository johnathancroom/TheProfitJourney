# This migration comes from refinery_akouo (originally 49)
class AddEmployeeIdToCsrEntry < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_csr_entries, :employee_id, :integer
  end
end