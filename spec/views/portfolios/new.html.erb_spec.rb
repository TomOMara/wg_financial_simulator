require 'rails_helper'

RSpec.describe "portfolios/new", type: :view do
  before(:each) do
    assign(:portfolio, Portfolio.new(
      :cash_holding => 1.5,
      :net_worth => 1.5,
      :client => nil
    ))
  end

  it "renders new portfolio form" do
    render

    assert_select "form[action=?][method=?]", portfolios_path, "post" do

      assert_select "input#portfolio_cash_holding[name=?]", "portfolio[cash_holding]"

      assert_select "input#portfolio_net_worth[name=?]", "portfolio[net_worth]"

      assert_select "input#portfolio_client_id[name=?]", "portfolio[client_id]"
    end
  end
end
