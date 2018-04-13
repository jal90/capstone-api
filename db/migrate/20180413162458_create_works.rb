class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      # t.belongs_to :vehicle, foreign_key: true
      t.string :name
      t.integer :mileage
      t.date :date

      t.timestamps
    end
  end
end
