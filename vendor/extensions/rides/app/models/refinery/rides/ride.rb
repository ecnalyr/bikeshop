module Refinery
  module Rides
    class Ride < Refinery::Core::BaseModel
      self.table_name = 'refinery_rides'

      attr_accessible :name, :time, :phone, :location, :description, :position

      acts_as_indexed :fields => [:name, :phone, :location, :description]

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
