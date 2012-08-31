class CreateAkouoAkouos < ActiveRecord::Migration

  def up
    create_table :refinery_akouos do |t|
      t.integer :id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-akouo"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/akouo/akouos"})
    end

    drop_table :refinery_akouos

  end

end
