module API
  module V1  	
    class WaypointsController < ApplicationController      
      def create

        render json: {}, status: 201
      end
  	end
  end

end