require 'rails_helper'

RSpec.describe "clients/index", type: :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :wants_to_convert_assets_to_money => false
      ),
      Client.create!(
        :wants_to_convert_assets_to_money => false
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
