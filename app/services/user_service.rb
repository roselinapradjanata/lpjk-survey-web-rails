class UserService
  def self.register params
    user = User.create(params)
    user.save
  end

  def self.get_company(email)
    company = User.where(email: email).first.company
    if company.nil?
      return ""
    end
    return company.id
  end
end
