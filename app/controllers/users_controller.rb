class UsersController < ApplicationController

  def index
    #redirect_to user_ingredients_path(user)
  end

  def new
    @user = User.new
  end

  def create
    if params[:password] == params[:password_confirmation]
      user = User.new params[:user]
      user.password = params[:password]
      if user.save
        session[:user_id] = user.id
        redirect_to user_ingredients_path(user)
      else
        flash[:error] = user.errors.full_messages.join(' : ')
        redirect_to root_path
      end
    else
      flash[:error] = "Passwords must match!"
      redirect_to root_path
    end
  end

  def update
    @user = current_user
      if @user.save!
        params[:ingredient_ids].length.times do |index|
          @user.ingredients << Ingredient.find(params[:ingredient_ids][index])
        end
        
      end

      render :partial => "ingredients/user_pantry"
    # rescue   
    #   flash[:error] = "You already have that ingredient!"

  end

  def show
    @user = current_user
    @user_favorites
  end

  def destroy
    current_user.ingredients.destroy(params[:id])
    render :partial => "ingredients/user_pantry"
  end

end