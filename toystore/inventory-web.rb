require "sinatra"
require "./inventory_file"

set :port, 4567

get '/' do
  "<h1>Inventory Toy Store</h1>"
end

get "/products" do
  @products = read_products
  erb :"products/index"
end

get '/products/new' do
     erb :'contacts/new'
  end

  get '/products/:i' do
     @i = params[:i].to_i
     products = read_products
     @product = products[@i]
     erb :'products/show'
  end

  post '/products' do
   new_product = { name: params[:name], id_number: params[:id_number], quantity: params[:quantity] }

   products = read_products
   products << new_product
   write_products( products )

   i = products.length - 1

   redirect "/products/#{i}"
end

# get '/contacts/:i/edit' do
#    @i = params[:i].to_i
#
#    contacts = read_contacts
#    @contact = contacts[@i]
#
#    erb :'contacts/edit'
# end
#
# post '/contacts/:i/update' do
#    i = params[:i].to_i
#
#    updated_contact = { name: params[:name], phone: params[:phone], email: params[:email] }
#
#    contacts = read_contacts
#    contacts[i] = updated_contact
#    write_contacts( contacts )
#
#    redirect "/contacts/#{i}"
# end
#
# get '/contacts/:i/delete' do
#    i = params[:i].to_i
#
#    contacts = read_contacts
#    contacts.delete_at( i )
#    write_contacts( contacts )
#
#    redirect "/contacts"
# end
