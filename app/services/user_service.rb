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

  def self.get_user(email)
    user = User.where(email: email)
    return user.first
  end
end
