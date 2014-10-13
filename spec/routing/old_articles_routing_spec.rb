require "rails_helper"

RSpec.describe OldArticlesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/old_articles").to route_to("old_articles#index")
    end

    it "routes to #new" do
      expect(:get => "/old_articles/new").to route_to("old_articles#new")
    end

    it "routes to #show" do
      expect(:get => "/old_articles/1").to route_to("old_articles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/old_articles/1/edit").to route_to("old_articles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/old_articles").to route_to("old_articles#create")
    end

    it "routes to #update" do
      expect(:put => "/old_articles/1").to route_to("old_articles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/old_articles/1").to route_to("old_articles#destroy", :id => "1")
    end

  end
end
