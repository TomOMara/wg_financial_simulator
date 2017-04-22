class CreateTradedCompanies < ActiveRecord::Migration
  def change
    create_table :traded_companies do |t|
      t.string :name
      t.string :type
      t.integer :current_price
      t.integer :n_stocks

      t.timestamps
    end
  end
end
