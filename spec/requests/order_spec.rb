require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "GET /add_to_cart" do
    it "returns http success" do
      get "/order/add_to_cart"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /apply_coupon" do
    it "returns http success" do
      get "/order/apply_coupon"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /finish" do
    it "returns http success" do
      get "/order/finish"
      expect(response).to have_http_status(:success)
    end
  end

end
