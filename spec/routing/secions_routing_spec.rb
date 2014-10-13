require "rails_helper"

RSpec.describe SecionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/secions").to route_to("secions#index")
    end

    it "routes to #new" do
      expect(:get => "/secions/new").to route_to("secions#new")
    end

    it "routes to #show" do
      expect(:get => "/secions/1").to route_to("secions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/secions/1/edit").to route_to("secions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/secions").to route_to("secions#create")
    end

    it "routes to #update" do
      expect(:put => "/secions/1").to route_to("secions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/secions/1").to route_to("secions#destroy", :id => "1")
    end

  end
end
