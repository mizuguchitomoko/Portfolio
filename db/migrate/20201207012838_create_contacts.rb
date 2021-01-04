class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.text :massage
      t.integer :address, null: false, default: 0
      t.string :email
      t.string :phone_number
      t.integer :gender, null: false, default: 0
      t.integer :age, null: false, default: 0
      t.integer :status

      t.timestamps
    end
  end
end
