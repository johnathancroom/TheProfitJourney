# This migration comes from refinery_workshops (originally 1)
class CreateWorkshopsWorkshops < ActiveRecord::Migration

  def up
    create_table :refinery_workshops do |t|
      t.string :title
      t.text :description
      t.string :location
      t.datetime :date
      t.integer :seats
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-workshops"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/workshops/workshops"})
    end

    drop_table :refinery_workshops

  end

end
