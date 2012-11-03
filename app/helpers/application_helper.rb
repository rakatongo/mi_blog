module ApplicationHelper

	

	def parrafo(num)
		Faker::Lorem.paragraph(num)
	end	

	def parrafos(num)
		Faker::Lorem.paragraphs(num)
	end	

	def random_color
		a = ["rojo","amarillo","violeta","azul","verde"]
		a[rand(4)]
	end
end


