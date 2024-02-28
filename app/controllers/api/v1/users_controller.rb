class Api::V1::UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, serializer: UserSerializer, status: 200
    else
      render json: { error: "Not Found!" }, status: 404
    end
  end
  

  def index
    users = User.all
    render json: users, each_serializer: UserSerializer, status: 200
  end


  def create
    user = User.new(
      name:usr_params[:name] ,
      email:usr_params[:email],
      phoneNo:usr_params[:phoneNo]
    )

    if user.save
      render json:user , status:200
    else
      render json:{error:"Internal server Problem"}
    end

  end

  def destroy
    user = User.find_by(id: params[:id])
    if user
      user.destroy
      head :no_content, status: 204
    else
      render json: { error: "User Not Found!" }, status: 404
    end
  end

  def new
  end

  def update
    user = User.find_by(id: params[:id])
    if user
      if user.update(usr_params)
        render json: user, serializer: UserSerializer, status: 200
      else
        render json: { error: "Failed to update user" }, status: 500
      end
    else
      render json: { error: "User Not Found!" }, status: 404
    end
  end

  def edit
    user = User.find_by(id: params[:id])
    if user
      render json: user, serializer: UserSerializer, status: 200
    else
      render json: { error: "User Not Found!" }, status: 404
    end
  end


  private

  def usr_params
    params.require(:user).permit(:name, :email, :phoneNo)
  end

end
