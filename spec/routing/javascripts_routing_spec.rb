require "rails_helper"

RSpec.describe JavascriptsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/javascripts").to route_to("javascripts#index")
    end

    it "routes to #new" do
      expect(:get => "/javascripts/new").to route_to("javascripts#new")
    end

    it "routes to #show" do
      expect(:get => "/javascripts/1").to route_to("javascripts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/javascripts/1/edit").to route_to("javascripts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/javascripts").to route_to("javascripts#create")
    end

    it "routes to #update" do
      expect(:put => "/javascripts/1").to route_to("javascripts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/javascripts/1").to route_to("javascripts#destroy", :id => "1")
    end

  end
end
