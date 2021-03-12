class JoinridesController < ApplicationController

    def index 
        @joinride = Joinride.all 
        render json: @joinride
    end

    def create 
        @joinride = Joinride.create(ride_id: params[:ride], user_id: params[:user])
        render json: @joinride
    end
end
