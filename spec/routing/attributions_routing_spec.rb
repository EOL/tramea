require "rails_helper"

RSpec.describe AttributionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/attributions").to route_to("attributions#index")
    end

    it "routes to #new" do
      expect(:get => "/attributions/new").to route_to("attributions#new")
    end

    it "routes to #show" do
      expect(:get => "/attributions/1").to route_to("attributions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/attributions/1/edit").to route_to("attributions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/attributions").to route_to("attributions#create")
    end

    it "routes to #update" do
      expect(:put => "/attributions/1").to route_to("attributions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/attributions/1").to route_to("attributions#destroy", :id => "1")
    end

  end
end
