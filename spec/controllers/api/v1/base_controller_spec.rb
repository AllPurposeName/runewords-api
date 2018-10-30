require 'controller_helper'

RSpec.describe Api::V1::BaseController, type: :controller do
  resource 'BaseController' do
    header 'Accept', 'application/json'
    header 'Content-Type', 'application/json'
    header 'Host', 'http://localhost:3000'

    context '#error' do
      include ActiveSupport::Inflector
      model = %w[Rune ItemType Runeword Property].sample
      bad_params = rand(9999..9_999_999)
      get "#{root_path}/#{model.underscore.pluralize}/#{bad_params}" do
        example_request "returns #{model} not found error" do
          error_message = { error: "#{model} record #{bad_params} not found",
                            status: 404 }.to_json

          expect(status).to eq(404)
          expect(response_body).to eq(error_message)
        end
      end
    end
  end
end
