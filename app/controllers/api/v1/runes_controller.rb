class Api::V1::RunesController < Api::V1::BaseController
  def index
    render json: Rune.all
  end

  def show
    render json: Rune.find_by(id: params[:id])
  end

  def runewords
    render json: Rune.find_by(id: params[:rune_id]).runewords
  end
end
