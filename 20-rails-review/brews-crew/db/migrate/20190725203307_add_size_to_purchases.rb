class AddSizeToPurchases < ActiveRecord::Migration[5.1]
  def change
    add_column :purchases, :size, :string
  end
end
