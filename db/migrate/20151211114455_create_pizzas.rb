class CreatePizzas < ActiveRecord::Migration
  def change
    create_table :pizzas do |t|
      t.belongs_to :categoria, index: true, foreign_key: true
      t.string :sabor
      t.text :cobertura
      t.integer :status

      t.timestamps null: false
    end
  end
end
