class ApplicationController < ActionController::Base

	def navigation_themes
		Theme.all.sort { |a,b| a.id <=> b.id}
	end

	def page_select
		request.fullpath
	end

	helper_method :navigation_themes
	helper_method :page_select
end
