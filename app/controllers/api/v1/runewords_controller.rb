class Api::V1::RunewordsController < Api::V1::BaseController
  def index
    render json: Runeword.all
  end

  def show
    render json: Runeword.find_by(id: params[:id])
  end

  def runes
    render json: Runeword.find_by(id: params[:runeword_id]).runes
  end

  def properties
    render json: Runeword.find_by(id: params[:runeword_id]).properties
  end

  def item_types
    render json: Runeword.find_by(id: params[:runeword_id]).item_types
  end
end
