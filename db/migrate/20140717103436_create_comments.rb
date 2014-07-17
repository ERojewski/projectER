class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :comment_content
    	t.string :comment_author
    	t.integer :postID
    	t.timestamps
    end
  end
end
