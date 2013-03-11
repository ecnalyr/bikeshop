# This migration comes from refinery_rides (originally 1)
class CreateRidesRides < ActiveRecord::Migration

  def up
    create_table :refinery_rides do |t|
      t.string :name
      t.date :time
      t.string :phone
      t.string :location
      t.string :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-rides"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/rides/rides"})
    end

    drop_table :refinery_rides

  end

end
