class RoutinesController < ApplicationController
  before_action :authenticate_user!
  before_action :assign_routine, except: [:index, :create, :new]

  def index
    @routines = current_user.routines
  end

  def new
    @routine = current_user.routines.new
  end

  def create
     @routine = current_user.routines.new(routine_params)
    if @routine.save
      redirect_to routines_path()
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @routine.update(routine_params)
      redirect_to routines_path()
    else
      render "edit"
    end
  end

  def show
  end

  def destroy
    @routine.destroy
    redirect_to routines_path()
  end

  def assign_routine
    @routine = current_user.routines.find(params[:id])
  end

  def routine_params
    params.require(:routine).permit(:name, :description)
  end

end