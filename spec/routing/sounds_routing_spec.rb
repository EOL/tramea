require "rails_helper"

RSpec.describe SoundsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sounds").to route_to("sounds#index")
    end

    it "routes to #new" do
      expect(:get => "/sounds/new").to route_to("sounds#new")
    end

    it "routes to #show" do
      expect(:get => "/sounds/1").to route_to("sounds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sounds/1/edit").to route_to("sounds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sounds").to route_to("sounds#create")
    end

    it "routes to #update" do
      expect(:put => "/sounds/1").to route_to("sounds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sounds/1").to route_to("sounds#destroy", :id => "1")
    end

  end
end
