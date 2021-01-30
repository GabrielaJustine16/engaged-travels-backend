class Api::V1::TripsController < ApplicationController
    before_action :set_trip, only: [:show, :update, :destroy]
  
    # GET /trips
    def index
      # is there an incoming user id
      # but does that matter?  do we always want just the current user's trips?
      if logged_in?
        @trips = current_user.trips
  
        render json: TripSerializer.new(@trips)
      else
        render json: {
          error: "You must be logged in to see trips"
        }
      end
    end
  
    # GET /trips/1
    def show
      render json: @trip
    end
  
    # POST /trips
    def create
      # byebug
      @trip = current_user.trips.build(trip_params)
  
      if @trip.save
        render json:  TripSerializer.new(@trip), status: :created
      else
        error_resp = {
          error: @trip.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /trips/1
    def update
      if @trip.update(trip_params)
        render json:  TripSerializer.new(@trip), status: :ok
      else
        error_resp = {
          error: @trip.errors.full_messages.to_sentence
        }
        render json: error_resp, status: :unprocessable_entity
      end
    end
  
    # DELETE /trips/1
    def destroy
      if @trip.destroy
        render json:  { data: "Trip successfully destroyed" }, status: :ok
      else
        error_resp = {
          error: "Trip not found and not destroyed"
        }
        render json: error_resp, status: :unprocessable_entity
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_trip
        @trip = Trip.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def trip_params
        params.require(:trip).permit(:start_date, :end_date, :name)
      end
  end