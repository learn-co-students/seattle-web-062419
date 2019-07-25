class AddCreamerStrengthToPurchases < ActiveRecord::Migration[5.1]
  def change
    add_column :purchases, :creamer_strength, :string
  end
end
