class Directors::SchedulesController < ApplicationController
before_action :authenticate_director!
  def index
    @schedule = Schedule.new
    @schedules = Schedule.all
  end

  def create
    schedule = Schedule.new(schedule_params)
    schedule.save!
    redirect_to directors_schedules_path
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    @schedule.update(schedule_params)
    redirect_to directors_schedules_path
  end

  def destroy
    schedule = Schedule.find(params[:id])
    schedule.destroy
    redirect_to directors_schedules_path
  end

  private
  def schedule_params
    params.require(:schedule).permit(:content, :start_time)
  end
end