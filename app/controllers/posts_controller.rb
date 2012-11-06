class PostsController < ApplicationController

	def index
		@posts = Post.all
		respond_to do |format|
	      format.html # index.html.erb
	      format.json { render json: @posts }
	    end
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(params[:post])
		if @post.save
			flash[:notice] = "Post creado!"
			redirect_to @post
		else
			flash[:error] = "El post no se pudo crear."	
			render 'new'
		end
	end

	def show
		@post = Post.find(params[:id])
		@comentarios = @post.comentarios.all(params[:post_id])
		
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
	 	respond_to do |format|
	      if @post.update_attributes(params[:post])
	        format.html { redirect_to @post, notice: 'Post updateado!' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @post.errors, status: :unprocessable_entity }
	      end
	    end
	end
end
