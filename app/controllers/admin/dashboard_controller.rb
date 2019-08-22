class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => ENV["USERNAME"], :password => ENV["PASSWORD"]
  def show
    @category = Category.all
    @products = Product.order(id: :desc).all
  end
end
