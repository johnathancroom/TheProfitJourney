class AddCallRequirementColumnsToPcny < ActiveRecord::Migration
  def change
    add_column :pcny, :pja, :integer, :default => 0
    add_column :pcny, :jcr, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end