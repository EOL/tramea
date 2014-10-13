require 'rails_helper'

RSpec.describe "Javascripts", :type => :request do
  describe "GET /javascripts" do
    it "works! (now write some real specs)" do
      get javascripts_path
      expect(response).to have_http_status(200)
    end
  end
end
