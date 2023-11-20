class CreateFavourites < ActiveRecord::Migration[7.1]
  def change
    create_table :favourites do |t|

      t.timestamps
      t.references :users, null: false, foreign_key: true
      t.references :items, null: false, foreign_key: true
    end
  end
end
