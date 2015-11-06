class Api::V1::RunewordsController < Api::V1::BaseController
  def index
    respond_with Runeword.all
  end
end
