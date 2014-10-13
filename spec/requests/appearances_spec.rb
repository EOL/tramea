require 'rails_helper'

RSpec.describe "Appearances", :type => :request do
  describe "GET /appearances" do
    it "works! (now write some real specs)" do
      get appearances_path
      expect(response).to have_http_status(200)
    end
  end
end
