require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

# get "/goodbye/:name" do
#   @user_name = params[:name]
#   "goodbye #{@user_name}"
# end

get '/goodbye/:name' do
  @user_name = all_the_names.select do |name|
    name.name == params[:name]
  end.first
  erb :'/goodbye/show.html'
end

get '/multiply/:num1/:num2' do
  @num = all_the_nums.select do |num|
    num.num == params[:num]
  end.first
  erb :'multiply/show.html'
end

  # Code your final two routes here:

end
