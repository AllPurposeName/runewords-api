class Api::V1::ItemTypesController < Api::V1::BaseController
  def model_class
    ItemType
  end

  def runewords
    render_json ItemType.find_by(id: params[:item_type_id]).runewords
  end
end
