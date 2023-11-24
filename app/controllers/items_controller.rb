class ItemsController < ApplicationController
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
end
