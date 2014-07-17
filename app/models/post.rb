#encoding UTF-8

class Post < ActiveRecord::Base
	validates :content, presence: true
end