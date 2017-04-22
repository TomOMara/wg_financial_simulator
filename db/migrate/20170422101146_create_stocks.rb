class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :price
      t.references :portfolio, index: true

      t.timestamps
    end
  end
end
