class WelcomeController < ApplicationController
	layout false, only: [:index]
	  before_action :authenticate_user!, except: [:index]
  def index
  end
end
