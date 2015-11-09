class Api::V1::BaseController < ApplicationController
  respond_to :json

  def model_class
    # overridden in each controller
  end

  def error
    error = {error: "#{model_class} record #{parameters.first.last} not found"}
    respond_to do |format|
      format.json { render json: error, status: 204 }
    end
  end

  def parameters
    request.query_parameters.any? ? request.query_parameters : {id: params[:id]}
  end

end
