class ApplicationController < ActionController::Base
  before_action :authenticate_request
  skip_before_action :verify_authenticity_token

  attr_reader :current_user

  include ExceptionHandler

  private

  def authenticate_request
    @current_user = AuthorizeRequest.call(request.headers).result
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end

  def authenticate_admin
    render json: { error: 'Not Authorized' }, status: 401 unless @current_user.admin?
  end
end
