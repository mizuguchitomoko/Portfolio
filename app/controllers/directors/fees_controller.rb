class Directors::FeesController < ApplicationController
  def index
    @fee = Fee.new
    @fees = Fee.all
  end

  def create
    fee = Fee.new(fee_params)
    fee.save!
    redirect_to directors_fees_path
  end

  def show
    @fee = Fee.find(params[:id])
  end

  def edit
    @fee = Fee.find(params[:id])
  end

  def update
    @fee = Fee.find(params[:id])
    @fee.update(fee_params)
    redirect_to directors_fees_path
  end

  def destroy
    fee = Fee.find(params[:id])
    fee.destroy
    redirect_to directors_fees_path
  end

  private
  def fee_params
    params.require(:fee).permit(:course, :price, :course_text)
  end
end
