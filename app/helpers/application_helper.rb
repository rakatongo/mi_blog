module ApplicationHelper

	

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


