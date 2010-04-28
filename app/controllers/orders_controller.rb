class OrdersController < ApplicationController
  def new
    @order = Order.new
  end
  def create
    @order = Order.new(params[:order])
    # TODO: model に入れる
    @order.project_id = params[:project_id] 

    if @order.save
      redirect_to(ok_order_path(params[:user_id] , params[:project_id]) , :notice => 'User was successfully created.')
    else
      render :action => "new"
    end
  end
  def ok
      redirect_to(show_project_path(params[:user_id] , params[:project_id]) , :notice => 'Order was successfully created.')
  end
end
