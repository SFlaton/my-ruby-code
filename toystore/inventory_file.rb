require 'json'

def read_products
   json = File.read( 'products.json' )
   array = JSON.parse( json, { :symbolize_names => true } )
end

def write_products( products )
   File.open( "products.json", "w" ) do |f|
      json = JSON.pretty_generate( products )
      f.write( json  )
   end
end
