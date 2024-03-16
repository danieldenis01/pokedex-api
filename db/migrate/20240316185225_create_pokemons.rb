class CreatePokemons < ActiveRecord::Migration[7.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
