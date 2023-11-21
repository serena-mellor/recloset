class CreateFavourites < ActiveRecord::Migration[7.1]
  def change
    create_table :favourites do |t|

      t.timestamps
      t.references :user, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
    end
  end
end
