#encoding UTF-8

class Comment < ActiveRecord::Base
	validates :comment_content, presence: true
end