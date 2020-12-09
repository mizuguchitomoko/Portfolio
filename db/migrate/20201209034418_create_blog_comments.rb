class CreateBlogComments < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_comments do |t|
      t.text :blog_comment
      t.string :comment_name
      t.integer :blog_id

      t.timestamps
    end
  end
end
