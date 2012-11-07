class ComentariosController < ApplicationController

	def create
		@post = Post.find(params[:post_id])		
		@comentario = @post.comentarios.create(params[:comentario])
		if @comentario.save
			flash[:succes] = "Comentario agregado!"
			redirect_to post_path(@post)
		else		
			flash[:error] = "Su post no pudo ser guardado"
			redirect_to post_path(@post)
		end
	end

	def destroy		
		@comentario = Comentario.find(params[:id])
		@comentario.delete
		redirect_to post_path(params[:post_id])
	end
end

