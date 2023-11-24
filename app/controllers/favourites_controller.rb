class FavouritesController < ApplicationController
  def create
    @favourite = Favourite.new
    item = Item.find(params[:item_id])
    @favourite.item = item
    @favourite.user = current_user
    if @favourite.save
      respond_to do |format|
        format.json
      end
    end
  end

  def destroy
    @favourite = Favourite.where(user_id: current_user.id, item_id: params[:id]).first
    @favourite.destroy
    respond_to do |format|
      format.json
    end
  end
end
