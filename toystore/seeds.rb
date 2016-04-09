require "./inventory_file"

products = []


  products << {name: "car",id_number:"11",quantity: "10"}
  products << {name: "puzzle",id_number:"12",quantity: "5"}
  products << {name: "nerve gun", id_number:"13",quantity: "10"}
  products << {name: "playdoh", id_number:"14", quantity: "5"}
  products << {name: "lego", id_number:"15", quantity: "20"}

write_products( products )
