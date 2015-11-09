class Api::V1::PropertiesController < Api::V1::BaseController
  def index
    render json: Property.all
  end

  def show
    render json: Property.find_by(id: params[:id])
  end

  def runewords
    render json: Property.find_by(id: params[:property_id]).runewords
  end
end
