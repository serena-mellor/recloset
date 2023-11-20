class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.decimal :price
      t.timestamps
      t.references :users, null: false, foreign_key: true
      t.references :items, null: false, foreign_key: true
      t.references :reviews, null: false, foreign_key: true
    end
  end
end
