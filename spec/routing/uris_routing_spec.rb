require "rails_helper"

RSpec.describe UrisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/uris").to route_to("uris#index")
    end

    it "routes to #new" do
      expect(:get => "/uris/new").to route_to("uris#new")
    end

    it "routes to #show" do
      expect(:get => "/uris/1").to route_to("uris#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/uris/1/edit").to route_to("uris#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/uris").to route_to("uris#create")
    end

    it "routes to #update" do
      expect(:put => "/uris/1").to route_to("uris#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/uris/1").to route_to("uris#destroy", :id => "1")
    end

  end
end
