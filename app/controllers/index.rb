get '/' do
  erb :index
end

post '/rolls' do
  value = params[:value] ? params[:value].to_i : nil

  @roll = value ? Roll.create({ value: value }) : Roll.create

  if request.xhr?
    erb :rolled_die, layout: false
  else
    erb :index
  end
end
