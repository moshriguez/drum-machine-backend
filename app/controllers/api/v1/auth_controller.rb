class Api::V1::AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
        user = User.find_by(username: params[:username])
        if user&.authenticate(user_login_params[:password])
            token = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), jwt: token}, status: :accepted
        else
            render json: {error: 'The username or password is incorrect'}, status: :unauthorized
        end
    end

    private
    def user_login_params
        params.permit(:username, :password)
    end
end
