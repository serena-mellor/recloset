class ChangePriceTypeInTransactions < ActiveRecord::Migration[7.1]
  def change
    change_column :transactions, :price, :float
  end
end
