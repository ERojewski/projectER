#coding: UTF-8

class UsersController < ApplicationController
	before_action :authenticate_user!
	#before_action :make_sure_its_mine

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end
	# private
	# 	def make_sure_its_mine
	# 		unless current_user.id==params[:id]
	# 			redirect_to root_url, alert: "To nie twoje konto!"
	# 		end
	# 		true
	# 	end
end