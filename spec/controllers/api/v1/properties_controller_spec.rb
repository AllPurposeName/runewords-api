require 'controller_helper'

RSpec.describe Api::V1::PropertiesController, type: :controller do
  resource 'Properties' do
    header 'Accept', 'application/json'
    header 'Content-Type', 'application/json'
    header 'Host', 'http://localhost:3000'
    let(:schema) do
      File.read(
        "#{Rails.root}/spec/controllers/api/v1/contracts/property_contract.json"
      )
    end
    let!(:property) do
      FactoryBot.create(:property)
    end

    context '#index' do
      get "#{root_path}/properties" do
        example_request 'returns all properties' do
          last_response_object = JSON.parse(response_body).find { |b| b['name'] == JSON.parse(schema)['name'] }.to_json
          expect(status).to eq(200)
          expect(last_response_object).to match_json(schema)
        end
      end
    end

    context '#show' do
      let(:id) { property.id }
      get "#{root_path}/properties/:id" do
        example_request 'returns a single property' do
          expect(status).to eq(200)
          expect(response_body).to match_json(schema)
        end
      end
    end

    context '#runewords' do
      let(:id) { Property.first.id }
      get "#{root_path}/properties/:id/runewords" do
        example_request 'returns all associated runewords' do
          expect(status).to eq(200)
          expect(response_body).to include(Property.first.runewords.first.name)
        end
      end
    end
  end
end
