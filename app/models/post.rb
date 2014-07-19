#encoding UTF-8

class Post < ActiveRecord::Base
	validates :content, presence: true
	belongs_to :user
	has_many :comments
end