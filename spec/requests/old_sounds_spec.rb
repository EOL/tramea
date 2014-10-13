require 'rails_helper'

RSpec.describe "OldSounds", :type => :request do
  describe "GET /old_sounds" do
    it "works! (now write some real specs)" do
      get old_sounds_path
      expect(response).to have_http_status(200)
    end
  end
end
