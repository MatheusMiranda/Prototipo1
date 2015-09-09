module ApplicationHelper
	def full_title(title="")
		title_default = "Crub Basico"
		if(title.empty?)
			return title_default
		else
			return title + " - " + title_default
		end
	end
end
