class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|
      t.string :course
      t.integer :price

      t.timestamps
    end
  end
end
