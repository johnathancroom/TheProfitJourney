class CreateJourneyboardCsrEntries < ActiveRecord::Migration
  def change
    create_table :refinery_journeyboard_csr_entries do |t|
      t.date :date
      t.integer :sold, :default => 0
      t.integer :sold_new_systems, :default => 0
      t.integer :lost, :default => 0
      t.integer :user_id

      t.timestamps
    end
  end
end
