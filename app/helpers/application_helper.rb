module ApplicationHelper

	def display_datetime(dt)
		dt.strftime("%b %-d, %Y %l:%M%P")
	end

end
