class Directors::ContactsController < ApplicationController
#before_action :authenticate_director!
  def index
    @contacts = Contact.page(params[:page]).per(6)
  end

  def show
    @contact = Contact.find(params[:id])
  end
end