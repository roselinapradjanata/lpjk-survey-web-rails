class AdminController < ApplicationController
  before_action :authenticate_admin

  def show_surveys
    surveys = AdminService.get_all_surveys
    return render json: surveys, status: :ok
  end

  def show_companies
    companies = AdminService.get_all_companies
    return render json: companies, status: :ok
  end

end
