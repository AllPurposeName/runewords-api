require "controller_helper"

RSpec.describe Api::V1::BaseController, :type => :controller do
  resource "BaseController" do
    header "Accept", "application/json"
    header "Content-Type", "application/json"
    header "Host", "http://localhost:3000"

    context "#error" do
      get "#{root_path}/item_types/99999999" do
        example_request "returns ItemType not found error" do
          error message = {error: "#{model_class} record #{parameters.first.last} not found"}.to_json

          expect(status).to eq(404)
          expect(response_body).to eq(error_message)
        end
      end
    end

    context "#show" do
      get "#{root_path}/item_types/:id" do
        let!(:id) { ItemType.first.id }
        example_request "returns a single item type" do

          expect(status).to eq(200)
          expect(response_body).to eq(ItemType.first.to_json)
        end
      end
    end

    context "#runewords" do
      get "#{root_path}/item_types/:id/runewords" do
        let!(:id) { ItemType.first.id }
        example_request "returns all associated runewords" do

          expect(status).to eq(200)
          expect(response_body).to eq(ItemType.first.runewords.to_json)
        end
      end
    end
  end
end
