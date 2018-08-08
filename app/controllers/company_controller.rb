class CompanyController

  def show
    company = CompanyService.get_company_profile(params[:id])
    return render json: company, status: :ok
  end

  def create
    company = CompanyService.create_company(params[:name], params[:location], params[:category], params[:type])
    return render json: company, status: :ok
  end

end
