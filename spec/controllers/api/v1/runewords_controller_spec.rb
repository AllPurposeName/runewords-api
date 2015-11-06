require "controller_helper"

RSpec.describe Api::V1::RunewordsController, :type => :controller do
  resource "Runewords" do
    header "Accept", "application/json"
    header "Content-Type", "application/json"
    header "Host", "http://localhost:3000"

    context "#index" do
      get "#{root_path}/runewords" do
        example_request "returns all runewords" do

          expect(status).to eq(200)
          expect(response_body).to eq(Runeword.all.to_json)
        end
      end
    end

    context "#show" do
      get "#{root_path}/runewords/:id" do
        let!(:id) { Runeword.first.id }
        example_request "returns a single runeword" do

          expect(status).to eq(200)
          expect(response_body).to eq(Runeword.first.to_json)
        end
      end
    end

    context "#runes" do
      get "#{root_path}/runewords/:id/runes" do
        let!(:id) { Runeword.first.id }
        example_request "returns the runes associated with the runeword" do

          expect(status).to eq(200)
          expect(response_body).to eq(Rune.all.to_json)
        end
      end
    end

    context "#properties" do
      get "#{root_path}/runewords/:id/properties" do
        let!(:id) { Runeword.first.id }
        example_request "returns the properties associated with the runeword" do

          expect(status).to eq(200)
          expect(response_body).to eq(Property.all.to_json)
        end
      end
    end

    context "#item_types" do
      get "#{root_path}/runewords/:id/item_types" do
        let!(:id) { Runeword.first.id }
        example_request "returns the item types associated with the runeword" do

          expect(status).to eq(200)
          expect(response_body).to eq(ItemType.all.to_json)
        end
      end
    end
  end
end
