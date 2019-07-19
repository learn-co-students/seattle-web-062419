class CreateTacos < ActiveRecord::Migration[5.1]
  def change
    create_table :tacos do |t|
      t.string :shell
      t.float :price
      t.string :ingredients

      t.timestamps
    end
  end
end
