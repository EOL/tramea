require 'rails_helper'

RSpec.describe "OldImages", :type => :request do
  describe "GET /old_images" do
    it "works! (now write some real specs)" do
      get old_images_path
      expect(response).to have_http_status(200)
    end
  end
end
