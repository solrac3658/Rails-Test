class CreateRents < ActiveRecord::Migration[5.2]
  def change
    create_table :rents do |t|
      t.references :user, foreign_key: true
      t.references :entretenimiento, foreign_key: true
      t.date :fecha

      t.timestamps
    end
  end
end
