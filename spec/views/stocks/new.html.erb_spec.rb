require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      :price => 1,
      :portfolio => nil
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input#stock_price[name=?]", "stock[price]"

      assert_select "input#stock_portfolio_id[name=?]", "stock[portfolio_id]"
    end
  end
end
