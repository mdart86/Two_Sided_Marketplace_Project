class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, limit: 30
      t.text :description, limit: 150
      t.decimal :price, precision: 8, scale: 2
      t.string :condition, limit: 30
      t.string :scale, limit: 20
      t.string :aircraft_model, limit: 30
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
