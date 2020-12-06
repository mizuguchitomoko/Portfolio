class Directors::SchedulesController < ApplicationController
  def index
    @schedule = Schedule.new
    @schedules = Schedule.all
  end

  def create
    schedule = Schedule.new(schedule_params)
    schedule.save!
    redirect_to directors_schedules_path
  end

  private
  def schedule_params
    params.require(:schedule).permit(:content, :start_time)
  end
end