require 'rails_helper'

RSpec.describe "Sounds", :type => :request do
  describe "GET /sounds" do
    it "works! (now write some real specs)" do
      get sounds_path
      expect(response).to have_http_status(200)
    end
  end
end
