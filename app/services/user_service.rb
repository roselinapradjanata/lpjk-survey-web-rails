class UserService
  def self.register params
    user = User.create(params)
    user.save
  end
end