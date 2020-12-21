class Directors::ContactsController < ApplicationController
before_action :authenticate_director!
  def index
    @contacts = Contact.page(params[:page]).per(6)
    @notification_count = check_notifications
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    contact = Contact.find(params[:id])
    contact.destroy
    redirect_to directors_contacts_path
  end

  private
  def check_notifications
    unchecked_notifications = Notification.where(checked:false)
    unchecked_notifications.each do |un|
      un.update!(checked: true)
    end
    return unchecked_notifications.size
  end
end