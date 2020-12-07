class Directors::ContactsController < ApplicationController
  def index
    @contacts = Contact.page(params[:page]).per(6)
  end

  def show
    @contact = Contact.find(params[:id])
  end
end