class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :blog_title
      t.string :image_id
      t.text :blog_text
      t.integer :director_id

      t.timestamps
    end
  end
end
