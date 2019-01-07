require 'rails_helper'

RSpec.describe "Lobbies", type: :request do
  let(:user) { FactoryBot.create(:user) }

  describe "GET /lobbies" do
    it "works! (now write some real specs)" do
      headers = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)

      get lobbies_path, headers: auth_headers
      expect(response).to have_http_status(200)
    end
  end
end
