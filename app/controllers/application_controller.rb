class ApplicationController < ActionController::API
  
  # This gives all Rails controllers access to the current_user and authenticate_user methods,
  # because each controller inherits from ApplicationController
  def current_user
    auth_headers = request.headers["Authorization"]
    if auth_headers.present? && auth_headers[/(?<=\A(Bearer ))\S+\z/]
      token = auth_headers[/(?<=\A(Bearer ))\S+\z/]
      begin
        decoded_token = JWT.decode(
          token,
          Rails.application.credentials.fetch(:secret_key_base),
          true,
          { algorithm: "HS256" }
        )
        User.find_by(id: decoded_token[0]["user_id"])
      rescue JWT::ExpiredSignature
        nil
      end
    end
  end

  def authenticate_user
    unless current_user
      render json: {error: "Unauthorized"}, status: :unauthorized
    end
  end

  def authenticate_admin
    unless current_user && current_user.admin
      render json: {error: "Unauthorized"}, status: :unauthorized
    end
  end

end
