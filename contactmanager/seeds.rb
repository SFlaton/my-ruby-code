require './contact_file'

contacts = []

contacts << { name: "Thomas Jefferson", phone: "+1 206 310 1369", email: "tjeff@us.gov"}
contacts << { name: "Pietje Piet", phone: "+31 6 245 636 97", email: "pietje@piet.nl"}
contacts << { name: "Jan Tol", phone: "+31 6 245 450 20", email: "jan@tol.nl" }
contacts << { name: "Bob Hond", phone: "+31 6 450 342 45", email: "bobhond@hondenhuis.nl"}

write_contacts( contacts )
