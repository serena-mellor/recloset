class PagesController < ApplicationController
  def home
    @categories = ["Shoes", "Shirts", "Hats", "Dresses", ""]
  end
end
