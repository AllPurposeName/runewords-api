class Api::V1::ItemTypesController < Api::V1::BaseController
  def model_class
    ItemType
  end

  def index
    render json: ItemType.all || error
  end

  def show
    render json: ItemType.find_by(id: params[:id]) || error
  end

  def runewords
    render json: ItemType.find_by(id: params[:item_type_id]).runewords || error
  end
end
