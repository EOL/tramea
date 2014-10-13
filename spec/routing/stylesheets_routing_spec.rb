require "rails_helper"

RSpec.describe StylesheetsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stylesheets").to route_to("stylesheets#index")
    end

    it "routes to #new" do
      expect(:get => "/stylesheets/new").to route_to("stylesheets#new")
    end

    it "routes to #show" do
      expect(:get => "/stylesheets/1").to route_to("stylesheets#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stylesheets/1/edit").to route_to("stylesheets#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stylesheets").to route_to("stylesheets#create")
    end

    it "routes to #update" do
      expect(:put => "/stylesheets/1").to route_to("stylesheets#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stylesheets/1").to route_to("stylesheets#destroy", :id => "1")
    end

  end
end
