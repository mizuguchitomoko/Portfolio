class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      @contact.notifications.create!
      redirect_to contacts_complete_path
    else
      render 'new'
    end
  end

  def complete
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :massage, :address,:gender, :age, :email, :phone_number)
  end
end
