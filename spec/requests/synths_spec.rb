require 'rails_helper'

RSpec.describe "Synths", :type => :request do
  describe "GET /synths" do
    it "works! (now write some real specs)" do
      get synths_path
      expect(response).to have_http_status(200)
    end
  end
end
