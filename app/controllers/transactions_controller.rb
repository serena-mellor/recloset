class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.where(user: current_user)
  end

  def create
    @transaction = Transaction.new
    @transaction.user = current_user
    item = Item.find(params[:id])
    @transaction.item = item
    @transaction.price = item.price
    if @transaction.save
      redirect_to root_path
    else
      redirect_to item_path(item)
    end
  end
end
