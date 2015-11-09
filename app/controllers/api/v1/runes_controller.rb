class Api::V1::RunesController < Api::V1::BaseController
  def model_class
    Rune
  end

  def runewords
    render_json Rune.find_by(id: params[:rune_id]).runewords
  end
end
