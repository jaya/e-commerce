require 'rails_helper'

RSpec.describe "Orders", type: :request do
  describe "POST /add_to_cart" do

    before do
      post "/order/add_to_cart", params: { product_id: inventory_item.product.id }
    end

    context "when there is inventory available" do
      let(:inventory_item) do
        product = Product.create!(title: "product a", price: 10) 
         InventoryItem.create!(product: product, quantity: 3) 
      end

      it "adds the product on the cart" do
        expect(Order.first.items.count).to eq(1)
      end

      it "return success status" do
        expect(response).to have_http_status(:success)
      end
    end

    context "when there is no inventory available" do
      let(:inventory_item) do
        product = Product.create!(title: "product a", price: 10)
         InventoryItem.create!(product: product, quantity: 0)
      end

      it "returns bad request" do
        expect(response).to have_http_status(:bad_request)
      end

      it "does not adds the product on the cart" do
        expect(Order.first.items.count).to eq(0)
      end

      it "return bad request status" do
        expect(response).to have_http_status(:bad_request)
      end
    end


  end

  describe "POST /apply_coupon" do
    it "returns http success" do
    end
  end

  describe "GET /finish" do
    it "returns http success" do
    end
  end

end
