require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :wants_to_convert_assets_to_money => false
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_wants_to_convert_assets_to_money[name=?]", "client[wants_to_convert_assets_to_money]"
    end
  end
end
