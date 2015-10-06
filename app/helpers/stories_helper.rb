module StoriesHelper
	def message
		@count = Story.where(status: "Publish").count
		if @count > 1
			@pluralize = "s"
		else
			@pluralize = ""
		end
		puts = "Vous avez #{@count} message#{@pluralize} publié#{@pluralize}"
	end
end
