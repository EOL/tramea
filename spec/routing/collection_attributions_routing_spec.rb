require "rails_helper"

RSpec.describe CollectionAttributionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/collection_attributions").to route_to("collection_attributions#index")
    end

    it "routes to #new" do
      expect(:get => "/collection_attributions/new").to route_to("collection_attributions#new")
    end

    it "routes to #show" do
      expect(:get => "/collection_attributions/1").to route_to("collection_attributions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/collection_attributions/1/edit").to route_to("collection_attributions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/collection_attributions").to route_to("collection_attributions#create")
    end

    it "routes to #update" do
      expect(:put => "/collection_attributions/1").to route_to("collection_attributions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/collection_attributions/1").to route_to("collection_attributions#destroy", :id => "1")
    end

  end
end
