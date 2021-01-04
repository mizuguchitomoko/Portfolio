require 'rails_helper'

RSpec.describe Contact, type: :model do

  it "名前、メールアドレス、メッセージがある場合、有効である" do
    contact = Contact.new(
    name: "taro",
    email: "toro@gmail.com",
    massage: "Hello,world"
    )
    expect(contact).to be_valid
  end

  it "名前がない場合、無効である" do
    contact = Contact.new(
    name: nil,
    email: "taro@gmail.com",
    massage: "Hello,world"
    )
    expect(contact.valid?).to eq false;
  end

  it "メールアドレスがない場合、無効である" do
    contact = Contact.new(
    name: "taro",
    email: nil,
    massage: "Hello,world"
    )
    expect(contact.valid?).to eq false;
  end

    it "メッセージがない場合、無効である" do
    contact = Contact.new(
    name: "taro",
    email: "taro@gmail.com",
    massage: nil
    )
    expect(contact.valid?).to eq false;
  end
end