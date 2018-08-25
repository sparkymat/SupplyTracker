class Api::ConfigController < Api::BaseController
  def index
    render json: {
      countries: load_code
    }.merge(load_data), status: 200
  end
end
