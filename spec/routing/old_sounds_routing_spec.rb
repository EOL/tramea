require "rails_helper"

RSpec.describe OldSoundsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/old_sounds").to route_to("old_sounds#index")
    end

    it "routes to #new" do
      expect(:get => "/old_sounds/new").to route_to("old_sounds#new")
    end

    it "routes to #show" do
      expect(:get => "/old_sounds/1").to route_to("old_sounds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/old_sounds/1/edit").to route_to("old_sounds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/old_sounds").to route_to("old_sounds#create")
    end

    it "routes to #update" do
      expect(:put => "/old_sounds/1").to route_to("old_sounds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/old_sounds/1").to route_to("old_sounds#destroy", :id => "1")
    end

  end
end
