class Api::V1::RunewordsController < Api::V1::BaseController
  def index
    respond_with Runeword.all
  end

  def show
    respond_with Runeword.find_by(id: params[:id])
  end
end
