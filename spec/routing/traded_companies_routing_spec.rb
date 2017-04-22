require "rails_helper"

RSpec.describe TradedCompaniesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/traded_companies").to route_to("traded_companies#index")
    end

    it "routes to #new" do
      expect(:get => "/traded_companies/new").to route_to("traded_companies#new")
    end

    it "routes to #show" do
      expect(:get => "/traded_companies/1").to route_to("traded_companies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/traded_companies/1/edit").to route_to("traded_companies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/traded_companies").to route_to("traded_companies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/traded_companies/1").to route_to("traded_companies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/traded_companies/1").to route_to("traded_companies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/traded_companies/1").to route_to("traded_companies#destroy", :id => "1")
    end

  end
end
