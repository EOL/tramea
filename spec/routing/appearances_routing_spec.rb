require "rails_helper"

RSpec.describe AppearancesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/appearances").to route_to("appearances#index")
    end

    it "routes to #new" do
      expect(:get => "/appearances/new").to route_to("appearances#new")
    end

    it "routes to #show" do
      expect(:get => "/appearances/1").to route_to("appearances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/appearances/1/edit").to route_to("appearances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/appearances").to route_to("appearances#create")
    end

    it "routes to #update" do
      expect(:put => "/appearances/1").to route_to("appearances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/appearances/1").to route_to("appearances#destroy", :id => "1")
    end

  end
end
