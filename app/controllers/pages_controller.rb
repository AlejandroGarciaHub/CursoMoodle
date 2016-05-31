class PagesController < ApplicationController
	#layout false, only: [:moodle, :elearning]

	  before_action :authenticate_user!, except: [:index,:show]

 def show
  end

end
