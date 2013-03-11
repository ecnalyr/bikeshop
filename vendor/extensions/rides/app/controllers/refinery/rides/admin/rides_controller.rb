module Refinery
  module Rides
    module Admin
      class RidesController < ::Refinery::AdminController

        crudify :'refinery/rides/ride',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
