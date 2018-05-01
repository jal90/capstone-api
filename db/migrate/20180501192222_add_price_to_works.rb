class AddPriceToWorks < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :price, :decimal, precision: 6, scale: 2
  end
end
