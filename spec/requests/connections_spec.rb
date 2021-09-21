require 'rails_helper'

RSpec.describe "Connections", type: :request do
  describe "GET /index" do
    it "returns a successful response" do
      get connections_path
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end
  end
end
