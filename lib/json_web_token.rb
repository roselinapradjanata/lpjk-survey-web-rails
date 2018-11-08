class JsonWebToken
  class << self
    HMAC_SECRET = 'lpjk-web-survey'.freeze

    def encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode payload, HMAC_SECRET, 'HS256'
    end

    def decode(token)
      JWT.decode token, HMAC_SECRET, true, algorithm: 'HS256'

      rescue JWT::ExpiredSignature, JWT::VerificationError => e
        raise ExceptionHandler::ExpiredSignature, e.message
      rescue JWT::DecodeError, JWT::VerificationError => e
        raise ExceptionHandler::DecodeError, e.message
    end
  end
end