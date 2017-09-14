class PagesRestoController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!, except: [:home, :contact, :about ]
  
  def home
  end

  def reservation
  end

  def signup
  end

  def contact 
  end

  def about
  end

 
end
