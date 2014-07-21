#coding: UTF-8

class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:destroy, :new, :create, :edit, :update]
	before_action :make_sure_its_mine, only: [:destroy, :edit]

	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
		@comment = @comment.sort_by{|c| c.id}
	end

	def destroy
		@comment = Comment.find(params[:id])
		@comment.destroy
		redirect_to posts_path
	end

	def new
		@comment = Comment.new
	end

	def edit
		@comment = Comment.find(params[:id])
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user = current_user
		@comment.post_id = params[:comment][:post_id]
		if @comment.save
			redirect_to posts_path, notice: 'Dodano comment.'
		else
			render 'new'
		end
	end

	def update
		@comment=Comment.find(params[:id])
		if @comment.update(comment_params)
			redirect_to posts_path, notice: 'Edytowano comment.'
		else
			render 'edit'
		end
	end

	private
		def make_sure_its_mine
			unless current_user.id==Comment.find(params[:id].to_i).user.id
				redirect_to root_url, alert: "To nie Twój comment :)."
			end
			true
		end

	private
		def comment_params
			params.require(:comment).permit(:content, :user_id, :post_id)
		end
end