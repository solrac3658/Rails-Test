class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.references :users, foreign_key: true
      t.references :entretenimientos, foreign_key: true
      t.date :fecha

      t.timestamps
    end
  end
end
