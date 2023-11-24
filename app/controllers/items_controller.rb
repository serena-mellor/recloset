class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @items = Item.all
    if params[:category].present?
      @category = Category.find_by("name ILIKE :name", name: params[:category])
      @items = @items.where(category: @category)
    end

    if params[:query].present?
      sql_query = <<~SQL
        items.name @@ :query
        OR items.description @@ :query
        OR categories.name @@ :query
      SQL
      @items = @items.joins(:category).where(sql_query, query: params[:query])
    end
  end

  def show
    @item = Item.find(params[:id])
    # more logic needed?
  end

  # Added methods

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(items_params)
    if current_user
      @item.user = current_user
      if @item.save
        redirect_to user_path(current_user)
      else
        render :new, status: 422
      end
    else
      redirect_to root_path
    end
  end

  private

  def items_params
    params.require(:item).permit(:name, :description, :price, :category_id, :cover)
    # permit category id/user id?
  end
end
