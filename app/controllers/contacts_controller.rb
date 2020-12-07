class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)
    contact.save!
    redirect_to contacts_complete_path
  end

  def complete
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :massage, :address, :email, :phone_number)
  end
end
