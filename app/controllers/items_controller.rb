
class ItemsController < ApplicationController
  def index
    @items = Item.all
    if params[:category].present?
      category = Category.find_by("name ILIKE :name", name: params[:category])
      @items = @items.where(category: category)
    end
  end

  def show
    @item = Item.find(params[:id])
   #more logic needed?
  end
end
