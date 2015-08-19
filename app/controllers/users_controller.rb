class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @favorite = Favorite.new
    @favorite.dish_id = params[:dish_id]
    @favorite.venue_id = params[:venue_id]
    @favorite.notes = params[:notes]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.username = params[:username]

    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.username = params[:username]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end
end
