class FeesController < ApplicationController
  def index
    @fees = Fee.all
  end

end
