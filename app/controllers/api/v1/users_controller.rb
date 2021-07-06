class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create]

    def index
        users = User.all.map {|user| UserSerializer.new(user)}
        render json: {users: users}
    end

    def create
        user = User.new(user_params)
        if user.save
            token = encode_token(user_id: user.id)
            render json: { user: UserSerializer.new(user), jwt: token }, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :not_acceptable
        end
    end

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    private
    def user_params
        params.permit(:username, :password, :bio)
    end
end
