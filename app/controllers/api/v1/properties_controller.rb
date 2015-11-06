class Api::V1::PropertiesController < Api::V1::BaseController
  def index
    respond_with Property.all
  end

  def show
    respond_with Property.find_by(id: params[:id])
  end

  def runewords
    respond_with Property.find_by(id: params[:property_id]).runewords
  end
end
