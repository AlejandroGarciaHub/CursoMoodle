class PagesController < ApplicationController
	#layout false, only: [:moodle, :elearning]

	  before_action :authenticate_user!, except: [:moodle,:elearning]

 def show
  end

end
