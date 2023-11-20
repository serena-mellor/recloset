class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :users, null: false, foreign_key: true
      t.references :categories, null: false, foreign_key: true
      t.timestamps
    end
  end
end
