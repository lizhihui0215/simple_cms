class DemoController < ApplicationController
  layout false

  def index
    # render(:template => "demo/hello")
    # render("hello")
  end

  def hello
    # render("index")
    # instance variable can be used from template
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page].to_i
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
    redirect_to("http://www.lynda.com")
  end
end
