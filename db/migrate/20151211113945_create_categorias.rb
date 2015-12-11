class CreateCategorias < ActiveRecord::Migration
  def change
    create_table :categorias do |t|
      t.string :nome
      t.float :preco_media
      t.float :preco_grande

      t.timestamps null: false
    end
  end
end
