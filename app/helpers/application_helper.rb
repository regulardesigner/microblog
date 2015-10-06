module ApplicationHelper
	def title(page_title)
    	content_for(:title) { page_title }
	end
  
	def metadesc(page_metadesc)
    	content_for(:metadesc) { page_metadesc }
	end

	def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
		no_intra_emphasis: true, 
    	fenced_code_blocks: true,   
    	disable_indented_code_blocks: true)
	return markdown.render(text).html_safe
	end

	def draftCounter
		@count = Story.where(status: "Draft").count
		if @count >= 1
			puts = "&#9998; Your draft <span class='label round secondary'>#{@count}</span>".html_safe
		else
			puts = "&#9998; Your draft".html_safe
		end
	end
end
