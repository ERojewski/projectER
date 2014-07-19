class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :content

     	t.belongs_to :user
     	t.belongs_to :post
    end
  end
end
