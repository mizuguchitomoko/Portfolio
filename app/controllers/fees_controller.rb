class FeesController < ApplicationController
  def index
    @fees = Fee.all
  end

  def show
    @fee = Fee.find(params[:id])
  end
end
