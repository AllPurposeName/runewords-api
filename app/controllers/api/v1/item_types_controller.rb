class Api::V1::ItemTypesController < Api::V1::BaseController
  def index
    render json: ItemType.all
  end

  def show
    render json: ItemType.find_by(id: params[:id])
  end

  def runewords
    render json: ItemType.find_by(id: params[:item_type_id]).runewords
  end
end
