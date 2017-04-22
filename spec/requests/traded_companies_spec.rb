require 'rails_helper'

RSpec.describe "TradedCompanies", type: :request do
  describe "GET /traded_companies" do
    it "works! (now write some real specs)" do
      get traded_companies_path
      expect(response).to have_http_status(200)
    end
  end
end
