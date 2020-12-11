require 'rails_helper'

RSpec.describe Contact, type: :model do
  context "データが正しく保存される" do
    before do
      @contact = Contact.new
      @contact.name = "プログラミング　タロウ"
      @contact.email = "tarou@gmail.com"
      @contact.save
    end
    it "名前とメールアドレスが入力してあるので保存される" do
      expect(@contact).to be_valid
    end
  end
end