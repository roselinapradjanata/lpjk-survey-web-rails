class CompanyController < ApplicationController

  def show
    company = CompanyService.get_company_profile(params[:id])
    return render json: company, status: :ok
  end

  def create
    company = CompanyService.create_company(current_user.id, company_params)
    return render json: company, status: :ok
  end

  def update
    company = CompanyService.update_company(params[:id], company_params)
    return render json: company, status: :ok
  end

  def company_params
    params.permit(:name, :location, :category, :business_type)
  end

end
