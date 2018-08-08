class CompanyService

  def self.get_company_profile(id)
    company = Company.find(id)
    return company
  end

  def self.create_company(name, location, category, type)
    company = Company.new(name: name, location: location, category:category, type: type)
    company.save
    return company
  end

end
