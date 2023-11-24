class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @categories = ["Shoes", "Shirts", "Hats", "Dresses", ""]
  end
end
