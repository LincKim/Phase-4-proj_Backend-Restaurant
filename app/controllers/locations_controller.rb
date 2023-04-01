class LocationsController < ApplicationController

    def index
        locations = Location.all
        render json: locations, status: :ok
    end

    def show
        location = Location.find_by(id: params[:id])
        if location
            render json: location
        else
            render json: { message: "Location not found" }, status: :not_found 
        end
    end
end
