class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :review_name
      t.text :review_text

      t.timestamps
    end
  end
end
