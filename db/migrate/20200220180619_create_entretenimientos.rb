class CreateEntretenimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :entretenimientos do |t|
      t.string :titulo
      t.string :genero
      t.float :precio
      t.string :tipo
      t.float :duracion
      t.integer :temporada

      t.timestamps
    end
  end
end
