class MeasurementsController < ApplicationController
  before_action :authenticate_user!
  before_action :assign_measurement, except: [:index, :create, :new]

  def index
    # @measurements = Measurement.where({user_id: current_user.id})
    @measurements = current_user.measurements
  end

  def new
    @measurement = current_user.measurements.new
  end

  def create
    @measurement = current_user.measurements.new(measurement_params)
    if @measurement.save
      redirect_to measurements_path()
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @measurement.update(measurement_params)
      redirect_to measurements_path()
    else
      render "edit"
    end
  end

  def destroy
    @measurement.destroy
    redirect_to measurements_path()
  end

  def assign_measurement
    @measurement = current_user.measurements.find(params[:id])
  end

  def measurement_params
    params.require(:measurement).permit(:weight, :body_fat_percentage, :date)
  end
end