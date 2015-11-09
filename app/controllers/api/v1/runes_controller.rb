class Api::V1::RunesController < Api::V1::BaseController
  def model_class
    Rune
  end

  def index
    render json: Rune.all || error
  end

  def show
    render json: Rune.find_by(id: params[:id]) || error
  end

  def runewords
    render json: Rune.find_by(id: params[:rune_id]).runewords || error
  end
end
