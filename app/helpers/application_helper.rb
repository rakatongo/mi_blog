module ApplicationHelper

	def log_in(user)
		cookies[:user_id] = user.id
		self.current_user = user
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user ||= Usuario.find_by_id(cookies[:user_id])
	end

	def loged_in?
		!current_user.nil?
	end

	def parrafo(num)
		Faker::Lorem.paragraph(num)
	end	

	def parrafos(num)
		Faker::Lorem.paragraphs(num)
	end	

	def random_color
		a = ["rojo","amarillo","violeta","azul","verde"]
		a[rand(5)]
	end

	def store_loc
		session[:return] = request.fullpath	
	end

	def logueado
		unless loged_in?
			store_loc
			redirect_to login_path
		end
	end


	def comen(com)
		case com
		when 0
			"Dejar un comentario."	
		when 1
			"#{com} comentario"
		else
			"#{com} comentarios"		
		end
	end
end


