class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.boolean :wants_to_convert_assets_to_money

      t.timestamps
    end
  end
end
