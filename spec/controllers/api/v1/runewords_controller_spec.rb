require "controller_helper"

resource "Runewords" do
  header "Accept", "application/json"
  header "Content-Type", "application/json"
  header "Host", "http://localhost:3000"

  before(:each) do
    FactoryGirl.create(:malice,
                       :runes => [FactoryGirl.create(:ith),
                                  FactoryGirl.create(:el),
                                  FactoryGirl.create(:eth)])
  end

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
end
