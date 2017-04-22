class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.float :cash_holding
      t.float :net_worth
      t.references :client, index: true

      t.timestamps
    end
  end
end
