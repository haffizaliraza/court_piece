class Api::V1::SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
  
      if user&.authenticate(params[:password])
        payload = { user_id: user.id }
        token = JwtService.encode(payload)
  
        render json: { token: token }
      else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
      end
    end
  end