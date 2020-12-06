class SchedulesController < ApplicationController
  def index
    @schedule = Schedule.new
    @schedules = Schedule.all
  end
end
