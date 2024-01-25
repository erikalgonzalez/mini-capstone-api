class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      jwt = JWT.encode(
        {
          user_id: user.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end

  # test "create" do
  #   post "/users.json", params: { name: "Test", email: "test@test.com", password: "password", password_confirmation: "password" }
  #   post "/sessions.json", params: { email: "test@test.com", password: "password" }
  #   assert_response 201
  
  #   data = JSON.parse(response.body)
  #   assert_equal ["jwt", "email", "user_id"], data.keys
  # end
end
