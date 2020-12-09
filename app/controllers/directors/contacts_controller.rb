class Directors::ContactsController < ApplicationController
before_action :authenticate_director!
  def index
    @contacts = Contact.page(params[:page]).per(6)
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to directors_contacts_path
  end
end