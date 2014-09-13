class PagesController < ApplicationController
  def index
    @grandma = params[:grandma]
  end

  def user_response
    if params[:user_input] == params[:user_input].upcase
     response = "HI !!!!!!!! "
    else
      response = "Speak up, kiddo!"
    end
    redirect_to action: :index, grandma: response
  end
end

# -------Above code and in /config/routes.rb-------
=begin
similar to sinatra's
  get '/' do
    @grandma = params[:grandma]
    erb :index
  end



  in Rails:
  the view files are now in another folder. The folder  name should correspond with the controller name, in this case 'pages'
    the file name is now index.html.erb instead of index.erb. this is because we must specify that html is the response since rails can handle Js or XML as well
    we don't need to say erb :index because Rails assumes it will find a file with the same name as the action in a folder with the same name as the controller
=end
