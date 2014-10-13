require 'rails_helper'

RSpec.describe "LiteratureReferences", :type => :request do
  describe "GET /literature_references" do
    it "works! (now write some real specs)" do
      get literature_references_path
      expect(response).to have_http_status(200)
    end
  end
end
