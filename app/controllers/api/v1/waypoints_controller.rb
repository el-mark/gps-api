module API
  module V1  	
    class WaypointsController < ApplicationController      
      def create

        waypoint = Waypoint.new(waypoint_params) 
        if waypoint.save
          render json: waypoint, status: 201
        end

      end

      private
        def waypoint_params
          params.require(:waypoint).permit(:latitude, :longitude, :sent_at, :vehicle_identifier)
        end

  	end
  end

end