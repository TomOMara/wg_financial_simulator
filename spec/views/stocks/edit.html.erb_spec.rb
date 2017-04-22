require 'rails_helper'

RSpec.describe "stocks/edit", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :price => 1,
      :portfolio => nil
    ))
  end

  it "renders the edit stock form" do
    render

    assert_select "form[action=?][method=?]", stock_path(@stock), "post" do

      assert_select "input#stock_price[name=?]", "stock[price]"

      assert_select "input#stock_portfolio_id[name=?]", "stock[portfolio_id]"
    end
  end
end
