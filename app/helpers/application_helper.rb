module ApplicationHelper
	def avatar_link(user)

		gravatar_id = Digest::MD5::hexdigest(user.email).downcase
		if user.avatar
			user.avatar
		else
			"http://www.gravatar.com/avatar/#{gravatar_id}.jpg?s=150"
		end
	end
end
