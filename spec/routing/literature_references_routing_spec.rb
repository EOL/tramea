require "rails_helper"

RSpec.describe LiteratureReferencesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/literature_references").to route_to("literature_references#index")
    end

    it "routes to #new" do
      expect(:get => "/literature_references/new").to route_to("literature_references#new")
    end

    it "routes to #show" do
      expect(:get => "/literature_references/1").to route_to("literature_references#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/literature_references/1/edit").to route_to("literature_references#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/literature_references").to route_to("literature_references#create")
    end

    it "routes to #update" do
      expect(:put => "/literature_references/1").to route_to("literature_references#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/literature_references/1").to route_to("literature_references#destroy", :id => "1")
    end

  end
end
