class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: { to_table: :categories }

      t.timestamps
    end
  end
end
