require 'rails_helper'

RSpec.describe "traded_companies/edit", type: :view do
  before(:each) do
    @traded_company = assign(:traded_company, TradedCompany.create!(
      :name => "MyString",
      :type => "",
      :current_price => 1,
      :n_stocks => 1
    ))
  end

  it "renders the edit traded_company form" do
    render

    assert_select "form[action=?][method=?]", traded_company_path(@traded_company), "post" do

      assert_select "input#traded_company_name[name=?]", "traded_company[name]"

      assert_select "input#traded_company_type[name=?]", "traded_company[type]"

      assert_select "input#traded_company_current_price[name=?]", "traded_company[current_price]"

      assert_select "input#traded_company_n_stocks[name=?]", "traded_company[n_stocks]"
    end
  end
end
