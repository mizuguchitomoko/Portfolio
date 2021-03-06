class Directors::ContactsController < ApplicationController
before_action :authenticate_director!
  def index
    @contacts = Contact.page(params[:page]).per(6)
    #models/notification.rbで定義したクラスメソッドを呼び、contact/indexを見たら稼働
    Notification.confirmed
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update(contact_params)
    redirect_to directors_contacts_path
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to directors_contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:status)
  end

end