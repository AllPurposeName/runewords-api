require "controller_helper"

RSpec.describe Api::V1::ItemTypesController, :type => :controller do
  resource "ItemTypes" do
    header "Accept", "application/json"
    header "Content-Type", "application/json"
    header "Host", "http://localhost:3000"

    context "#index" do
      get "#{root_path}/item_types" do
        example_request "returns all item types" do

          expect(status).to eq(200)
          expect(response_body).to eq(ItemType.all.to_json)
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
