class Api::V1::RunewordsController < Api::V1::BaseController
  def model_class
    Runeword
  end

  def runes
    render_json Runeword.find_by(id: params[:runeword_id]).runes
  end

  def properties
    render_json Runeword.find_by(id: params[:runeword_id]).properties
  end

  def item_types
    render_json Runeword.find_by(id: params[:runeword_id]).item_types
  end
end
