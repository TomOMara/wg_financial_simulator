require 'rails_helper'

RSpec.describe "traded_companies/index", type: :view do
  before(:each) do
    assign(:traded_companies, [
      TradedCompany.create!(
        :name => "Name",
        :type => "Type",
        :current_price => 2,
        :n_stocks => 3
      ),
      TradedCompany.create!(
        :name => "Name",
        :type => "Type",
        :current_price => 2,
        :n_stocks => 3
      )
    ])
  end

  it "renders a list of traded_companies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
