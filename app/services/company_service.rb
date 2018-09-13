class CompanyService

  def self.get_company_profile(id)
    company = Company.find(id)
    return company
  end

  def self.create_company(user_id, new_company)
    company = Company.new(
      user_id: user_id,
      name: new_company[:name],
      location: new_company[:location],
      category: new_company[:category],
      business_type: new_company[:business_type]
    )
    company.save
    return company
  end

  def self.update_company(id, new_company)
    company = Company.find(id)
    company.update_attributes(new_company)
    company.save
    return company
  end

end
