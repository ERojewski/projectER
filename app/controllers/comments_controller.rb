class CommentsController < ApplicationController
	def index
		@comments = Comment.all
	end

	def show
		@comment = Comment.find(params[:id])
	end

	def destroy
		@comment=Comment.find(params[:id])
		@commment.destroy
		redirect_to posts_path
	end
	
	def new
		@comment = Comment.new
	end

	def create
		@comment=Comment.new(comment_params)
		@comment.comment_author = current_user.email
		if @comment.save
			redirect_to posts_path, notice: 'Dodano komentarz.'
		else
			render :new
		end
	end
	
	def edit
		@comment=Comment.find(params[:id])
	end

	def update
		@comment=Comment.find(params[:id])
		if @comment.update(comment_params)
			redirect_to posts_path, notice: "Edytowano Post"
		else
			render 'edit'
		end
	end

	private
		def comment_params
			params.require(:comment).permit(:comment_content)		
		end
end