require "controller_helper"

RSpec.describe Api::V1::PropertiesController, :type => :controller do
  resource "Properties" do
    header "Accept", "application/json"
    header "Content-Type", "application/json"
    header "Host", "http://localhost:3000"

    context "#index" do
      get "#{root_path}/properties" do
        example_request "returns all properties" do

          expect(status).to eq(200)
          expect(response_body).to eq(Property.all.to_json)
        end
      end
    end

    context "#show" do
      get "#{root_path}/properties/:id" do
        let!(:id) { Property.first.id }
        example_request "returns a single property" do

          expect(status).to eq(200)
          expect(response_body).to eq(Property.first.to_json)
        end
      end
    end

    context "#runewords" do
      get "#{root_path}/properties/:id/runewords" do
        let!(:id) { Property.first.id }
        example_request "returns all associated runewords" do

          expect(status).to eq(200)
          expect(response_body).to eq(Property.first.runewords.to_json)
        end
      end
    end
  end
end
