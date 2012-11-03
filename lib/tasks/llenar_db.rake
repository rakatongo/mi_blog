namespace :db do
desc "crear posts"
	task crear_post: :environment do
		20.times do
			ary = []
			a = Faker::Lorem.paragraphs(4)
			a.each do |v|
				ary << "<p>"+ v +"</p>"
			end
			
			Post.create(
			titulo: Faker::Lorem.sentence(1),
			contenido: ary.join)	
		end
		
	end	
end
			
