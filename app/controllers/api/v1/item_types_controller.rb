class Api::V1::ItemTypesController < Api::V1::BaseController
  def index
    respond_with ItemType.all
  end

  def show
    respond_with ItemType.find_by(id: params[:id])
  end

  def runewords
    respond_with ItemType.find_by(id: params[:item_type_id]).runewords
  end
end
