class Api::V1::PostsController < ApplicationController
    before_action :authenticate_user!
  
    def index
      # Your code to fetch and return posts
    end
  
    private
  
    def authenticate_user!
      token = request.headers['Authorization']&.split(' ')&.last
  
      if token
        decoded_token = JwtService.decode(token)
        @current_user = User.find_by(id: decoded_token['user_id'])
      end
  
      unless @current_user
        render json: { error: 'Unauthorized' }, status: :unauthorized
      end
    end
end  