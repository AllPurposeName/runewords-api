require "controller_helper"

resource "Runes" do
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
    get "#{root_path}/runes" do
      example_request "returns all runes" do

        expect(status).to eq(200)
        expect(response_body).to eq(Rune.all.to_json)
      end
    end
  end
end
