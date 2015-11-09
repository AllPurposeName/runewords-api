class Api::V1::PropertiesController < Api::V1::BaseController
  def model_class
    Property
  end

  def runewords
    render_json Property.find_by(id: params[:property_id]).runewords
  end
end
