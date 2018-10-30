class Api::V1::BaseController < ApplicationController
  respond_to :json

  def model_class
    # overridden in each controller
  end

  def show
    render_json model_class.find_by(parameters)
  end

  def index
    render_json model_class.all
  end

  def render_json(args)
    if args
      render json: args
    else
      error
    end
  end

  def error
    render json: error_message, status: 404
  end

  def error_message
    {
      error: "#{model_class} record #{parameters.first.last} not found",
      status: 404
    }
  end

  def parameters
    request.query_parameters.any? ? request.query_parameters : { id: params[:id] }
  end

  def queried_param
    parameters.first.last
  end
end
