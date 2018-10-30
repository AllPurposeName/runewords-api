require 'controller_helper'

RSpec.describe Api::V1::RunesController, type: :controller do
  resource 'Runes' do
    header 'Accept', 'application/json'
    header 'Content-Type', 'application/json'
    header 'Host', 'http://localhost:3000'

    context '#index' do
      get "#{root_path}/runes" do
        example_request 'returns all runes' do
          expect(status).to eq(200)
          expect(response_body).to eq(Rune.all.to_json)
        end
      end
    end

    context '#show' do
      get "#{root_path}/runes/:id" do
        let!(:id) { Rune.first.id }
        example_request 'returns a single rune' do
          expect(status).to eq(200)
          expect(response_body).to eq(Rune.first.to_json)
        end
      end
    end

    context '#runewords' do
      get "#{root_path}/runes/:id/runewords" do
        let!(:id) { Rune.first.id }
        example_request 'returns all associated runewords' do
          expect(status).to eq(200)
          expect(response_body).to eq(Rune.first.runewords.to_json)
        end
      end
    end
  end
end
