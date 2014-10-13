require "rails_helper"

RSpec.describe OldVideosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/old_videos").to route_to("old_videos#index")
    end

    it "routes to #new" do
      expect(:get => "/old_videos/new").to route_to("old_videos#new")
    end

    it "routes to #show" do
      expect(:get => "/old_videos/1").to route_to("old_videos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/old_videos/1/edit").to route_to("old_videos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/old_videos").to route_to("old_videos#create")
    end

    it "routes to #update" do
      expect(:put => "/old_videos/1").to route_to("old_videos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/old_videos/1").to route_to("old_videos#destroy", :id => "1")
    end

  end
end
