class Api::V1::PropertiesController < Api::V1::BaseController
  def model_class
    Property
  end

  def index
    render json: Property.all || error
  end

  def show
    render json: Property.find_by(id: params[:id]) || error
  end

  def runewords
    render json: Property.find_by(id: params[:property_id]).runewords || error
  end
end
