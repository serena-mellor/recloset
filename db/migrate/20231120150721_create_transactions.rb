class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.decimal :price
      t.timestamps
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
    end
  end
end
