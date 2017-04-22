require 'rails_helper'

RSpec.describe "traded_companies/show", type: :view do
  before(:each) do
    @traded_company = assign(:traded_company, TradedCompany.create!(
      :name => "Name",
      :type => "Type",
      :current_price => 2,
      :n_stocks => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
