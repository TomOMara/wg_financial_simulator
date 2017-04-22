require 'rails_helper'

RSpec.describe "portfolios/index", type: :view do
  before(:each) do
    assign(:portfolios, [
      Portfolio.create!(
        :cash_holding => 2.5,
        :net_worth => 3.5,
        :client => nil
      ),
      Portfolio.create!(
        :cash_holding => 2.5,
        :net_worth => 3.5,
        :client => nil
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
