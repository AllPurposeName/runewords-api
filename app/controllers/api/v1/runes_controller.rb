class Api::V1::RunesController < Api::V1::BaseController
  def index
    respond_with Rune.all
  end

  def show
    respond_with Rune.find_by(id: params[:id])
  end

  def runewords
    respond_with Rune.find_by(id: params[:rune_id]).runewords
  end
end
