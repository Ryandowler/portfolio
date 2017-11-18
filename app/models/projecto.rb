class Projecto < ActiveRecord::Base
	mount_uploader :image, AvatarUploader
	# def initialize(hunger_level: 0)
	# 	@hunger_level = hunger_level
	# end


	# def num_of_projects 
	# 	numProjectos = Projecto.count
	# end

	# def hungry?
	# 	@hunger_level > 5
	# end

	# def feed
	# 	@hunger_level = 0
	# end
end
