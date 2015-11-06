class Api::V1::RunesController < Api::V1::BaseController
  def index
    respond_with Rune.all
  end
end
