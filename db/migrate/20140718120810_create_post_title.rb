class CreatePostTitle < ActiveRecord::Migration
  def change
    create_table :post_titles do |t|
    	add_column :posts, :title, :string
    end
  end
end
