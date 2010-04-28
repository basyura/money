class UsersController < ApplicationController
  before_filter :authenticate

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_user_id(params[:user_id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find_by_user_id(params[:user_id])
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      
      redirect_to(@user, :notice => 'User was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @user = User.find_by_user_id(params[:user_id])

    if @user.update_attributes(params[:user])
      redirect_to(user_path(@user.user_id), :notice => 'User was successfully updated.')
      # => url_for @user -- http://xxx/money/users/2
    else
      render :action => "edit"
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(users_url) }
      format.xml  { head :ok }
    end
  end
end
