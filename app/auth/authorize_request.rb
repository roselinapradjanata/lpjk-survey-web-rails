class AuthorizeRequest
  prepend SimpleCommand
  attr_accessor :headers

  def initialize(headers = {})
    @headers = headers
  end

  def call
    authorize
  end

  private

  def authorize
    @user ||= User.find(decoded_auth_token[0]["user_id"]) if decoded_auth_token
    @user || errors.add(:token, 'Invalid token') && nil
  end

  def decoded_auth_token
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  end

  def http_auth_header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    else
      errors.add(:token, 'Missing token')
    end
    nil
  end
end