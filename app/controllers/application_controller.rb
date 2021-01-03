class ApplicationController < ActionController::Base
  before_action :check_notifications
  def check_notifications
    #未確認の通知(checked:falseの通知)を示すunchecked_notificationsメソッド
    @unchecked_notifications = Notification.where(checked:false)
  end
end
