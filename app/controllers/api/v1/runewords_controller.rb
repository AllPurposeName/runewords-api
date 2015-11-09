class Api::V1::RunewordsController < Api::V1::BaseController
  def model_class
    Runeword
  end

  def index
    render json: Runeword.all || error
  end

  def show
    render json: Runeword.find_by(id: params[:id]) || error
  end

  def runes
    render json: Runeword.find_by(id: params[:runeword_id]).runes || error
  end

  def properties
    render json: Runeword.find_by(id: params[:runeword_id]).properties || error
  end

  def item_types
    render json: Runeword.find_by(id: params[:runeword_id]).item_types || error
  end
end
