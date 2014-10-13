require "rails_helper"

RSpec.describe OldImagesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/old_images").to route_to("old_images#index")
    end

    it "routes to #new" do
      expect(:get => "/old_images/new").to route_to("old_images#new")
    end

    it "routes to #show" do
      expect(:get => "/old_images/1").to route_to("old_images#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/old_images/1/edit").to route_to("old_images#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/old_images").to route_to("old_images#create")
    end

    it "routes to #update" do
      expect(:put => "/old_images/1").to route_to("old_images#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/old_images/1").to route_to("old_images#destroy", :id => "1")
    end

  end
end
