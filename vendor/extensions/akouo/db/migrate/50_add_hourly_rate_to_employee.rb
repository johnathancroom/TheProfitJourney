class AddHourlyRateToEmployee < ActiveRecord::Migration
  def change
    add_column :refinery_journeyboard_employees, :hourly_rate, :decimal, :precision => 19, :scale => 2, :default => 0.0
  end
end