class ChangeReviewsScore < ActiveRecord::Migration[5.2]
  def change
    change_column :reviews, :score, :decimal, precision: 10, scale: 2
  end
end
