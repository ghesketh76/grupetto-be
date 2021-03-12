class JoinridesController < ApplicationController

    def index 
        @joinride = Joinride.all 
        render json: @joinride
    end

    def create 
        @joinride = Joinride.create(ride_id: params[:ride_id], user_id: params[:user_id])
        render json: @joinride
    end
end
