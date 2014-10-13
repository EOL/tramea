require 'rails_helper'

RSpec.describe "Concepts", :type => :request do
  describe "GET /concepts" do
    it "works! (now write some real specs)" do
      get concepts_path
      expect(response).to have_http_status(200)
    end
  end
end
