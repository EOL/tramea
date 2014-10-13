require "rails_helper"

RSpec.describe SynthsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/synths").to route_to("synths#index")
    end

    it "routes to #new" do
      expect(:get => "/synths/new").to route_to("synths#new")
    end

    it "routes to #show" do
      expect(:get => "/synths/1").to route_to("synths#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/synths/1/edit").to route_to("synths#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/synths").to route_to("synths#create")
    end

    it "routes to #update" do
      expect(:put => "/synths/1").to route_to("synths#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/synths/1").to route_to("synths#destroy", :id => "1")
    end

  end
end
