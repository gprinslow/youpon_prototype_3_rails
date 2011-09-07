module ApplicationHelper
  
	def logo
		logo = image_tag("logo.png",  :alt => "Youpon", :class => "round")
		if @logo.nil?
			logo
		else
			"Youpon"
		end
	end
  
	# Return a title on a per-page basis.
  def title
    base_title = "Youpon"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
