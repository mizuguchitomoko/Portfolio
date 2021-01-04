class SchedulesController < ApplicationController
  def index
    @schedule = Schedule.new
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

end
