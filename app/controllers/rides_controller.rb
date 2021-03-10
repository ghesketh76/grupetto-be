class RidesController < ApplicationController

    def index 
        @rides = Ride.all 
        render json: @rides
    end

    def show 
        find_ride
        render json: @ride
    end

    def create 
        @ride = Ride.create(ride_params)
        render json: @ride, status: :created
    end

    def update 
        find_ride
        @ride.update(ride_params)
        render json: @ride
    end

    def destroy
        find_ride
        @ride.destroy
        render status: :no_content
    end

    private 

    def find_ride 
        @ride = Ride.find(params[:id])
    end

    def ride_params
        params.require(:ride).permit(
                                :name, 
                                :ride_type, 
                                :meeting_location, 
                                :meeting_location_lat, 
                                :meeting_location_long,
                                :start_time,
                                :day_half,
                                :day_of_week
                                )
    end
end
