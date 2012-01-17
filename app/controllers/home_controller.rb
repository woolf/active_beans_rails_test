class HomeController < ApplicationController
  
  def index
    @var1 = User.hello("World")
    @var2 = User.hello("Kiev")
    @var3 = User.hello("Ukraine")
  end

  def async
    @var1 = User.async_hello("World")
    @var2 = User.async_hello("Kiev")
    @var3 = User.async_hello("Ukraine")
    render :index
  end

  def index6
    @var1 = User.hello("World")
    @var2 = User.hello("Kiev")
    @var3 = User.hello("Ukraine")
    @var4 = User.hello("World")
    @var5 = User.hello("Kiev")
    @var6 = User.hello("Ukraine")
    render :index6
  end
  
  def async6
    @var1 = User.async_hello("World")
    @var2 = User.async_hello("Kiev")
    @var3 = User.async_hello("Ukraine")
    @var4 = User.async_hello("World")
    @var5 = User.async_hello("Kiev")
    @var6 = User.async_hello("Ukraine")
    render :index6
  end

end