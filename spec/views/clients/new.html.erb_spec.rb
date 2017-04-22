require 'rails_helper'

RSpec.describe "clients/new", type: :view do
  before(:each) do
    assign(:client, Client.new(
      :wants_to_convert_assets_to_money => false
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input#client_wants_to_convert_assets_to_money[name=?]", "client[wants_to_convert_assets_to_money]"
    end
  end
end
