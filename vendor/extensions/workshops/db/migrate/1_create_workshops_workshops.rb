class CreateWorkshopsWorkshops < ActiveRecord::Migration

  def up
    create_table :refinery_workshops do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :date
      t.integer :seats
      t.integer :position
      t.decimal :price, :precision => 19, :scale => 2

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-workshops"})
    end

    if defined?(::Refinery::Page)
      #::Refinery::Page.delete_all({:link_url => "/workshops/calendar"})
    end

    drop_table :refinery_workshops

  end

end
