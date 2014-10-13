require 'rails_helper'

RSpec.describe "OldVideos", :type => :request do
  describe "GET /old_videos" do
    it "works! (now write some real specs)" do
      get old_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
