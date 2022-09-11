class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes
  get "/services" do
    services=Service.all
    services.to_json
  end

  # add new service
  post "/services" do
    service = Service.create(
      service_name: params[:service_name]
    )
    service.to_json
  end

  #get service by id

  get "/services/:id" do
    service = Service.find(params[:id])
    service.to_json
  end

  #update service
  patch "/services/:id" do
    service = Service.find(params[:id])
    service.update(
      service_name: params[:service_name]
    )
    service.to_json
  end

  #delete service
  delete "/services/:id" do
    service = Service.find(params[:id])
    service.destroy
    service.to_json
  end
  
  #add users
  post "/users" do 
    user = User.create(
      username: params[:username],
      email: params[:email],    
      phone: params[:phone],
      image_url: params[:image_url]
    )
    user.to_json
  end

  #get users

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/users" do
    user = User.find(params[:id])
    user.to_json
  end

  #update user
  patch "/users" do 
    updated_user = User.update(
      username: params[:username],
      email: params[:email],
      phone: params[:phone],
      image_url: params[:image_url]
    )
    updated_user.to_json
  end

  delete "/users/:id" do
    delete_user = User.find(params[:id])
    delete_user.destroy
    delete_user.to_json
  end
   


  
end
