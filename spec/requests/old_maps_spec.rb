require 'rails_helper'

RSpec.describe "OldMaps", :type => :request do
  describe "GET /old_maps" do
    it "works! (now write some real specs)" do
      get old_maps_path
      expect(response).to have_http_status(200)
    end
  end
end
