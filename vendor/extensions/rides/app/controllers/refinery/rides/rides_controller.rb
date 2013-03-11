module Refinery
  module Rides
    class RidesController < ::ApplicationController

      before_filter :find_all_rides
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ride in the line below:
        present(@page)
      end

      def show
        @ride = Ride.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @ride in the line below:
        present(@page)
      end

    protected

      def find_all_rides
        @rides = Ride.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/rides").first
      end

    end
  end
end
