class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html

  def index
    @activities = Activity.all.where(itinerary_id: params[:itinerary_id])
    respond_with(@activities)
  end

  def show
    @itinerary = Itinerary.find(params[:itinerary_id])
    respond_with(@itinerary, @activity)
  end

  def new
    @activity = Activity.new
    @itinerary = Itinerary.find(params[:itinerary_id])
    respond_with(@activity)
  end

  def edit
    @itinerary = Itinerary.find(params[:itinerary_id])
  end

  def create
    @activity = Activity.new(activity_params)
    @itinerary = Itinerary.find(params[:itinerary_id])
    @activity.itinerary = @itinerary
    @activity.save
    respond_with(@itinerary, @activity)
  end

  def update
    @activity.update(activity_params)
    respond_with(@activity.itinerary, @activity)
  end

  def destroy
    @activity.destroy
    respond_with(@activity.itinerary, @activity)
  end

  private
    def set_activity
      @activity = Activity.find(params[:id])
    end

    def activity_params
      params.require(:activity).permit(:poi_id, :itinerary_id, :start_time)
    end
end
