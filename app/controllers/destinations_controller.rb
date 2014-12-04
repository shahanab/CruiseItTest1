class DestinationsController < ApplicationController
  before_action :set_destination, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @destinations = Destination.all
    respond_with(@destinations)
  end

  def show
    respond_with(@destination)
  end

  def new
    @destination = Destination.new
    respond_with(@destination)
  end

  def edit
  end

  def create
    @destination = Destination.new(destination_params)
    @destination.save
    respond_with(@destination)
  end

  def update
    @destination.update(destination_params)
    respond_with(@destination)
  end

  def destroy
    @destination.destroy
    respond_with(@destination)
  end

  private
    def set_destination
      @destination = Destination.find(params[:id])
    end

    def destination_params
      params.require(:destination).permit(:name)
    end
end
