class UsersController < ApplicationController

  before_action :authenticate_user

  def index
    user = User.all
    render json: user.as_json
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully", name: user.name, email: user.email }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = current_user
    render json: {current_user: user}
  end 

  def update
    user = User.find(params[:id])
    user.update(
      name: params[:name] || user.name,
      email: params[:email] || user.email,
      password: params[:password] || user.password,
      password_confirmation: params[:password_confirmation] || user.password_confirmation
    )
    if user.save
      render json: {user: current_user, updated: user.as_json}
    else
      render json: {error: user.errors.full_messages}
    end
  end
  
end
