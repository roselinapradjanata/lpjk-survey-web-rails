class UsersController < ApplicationController
  skip_before_action :authenticate_request, only: %i[register login]

  def register
    user = UserService.register(user_params)
    return render json: { message: 'User created successfully' }, status: :created if user
    render json: { message: 'Failed register' }, status: :unprocessable_entity
  end

  def login
    authenticate(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :role)
  end

  def authenticate(params)
    auth = AuthenticateUser.call(params[:email], params[:password])
    if auth.success?
      current_user = UserService.get_user(params[:email])
      render json: {
        access_token: auth.result,
        message: 'Login Successful',
        user: {
          company_id: UserService.get_company(params[:email]),
          role: current_user.role
        }
      }
    else
      render json: { error: auth.errors }, status: :unauthorized
    end
  end
end
