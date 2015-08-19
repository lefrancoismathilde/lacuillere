Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Le Dindon en laisse",
    address:      "11 rue Beautreillis 75004 Paris",
    phone_number:  "0142669343",
    category:        "french"
  },
 {
    name:         "Le Bo-Zinc",
    address:      "112 avenue Mozart 75016 Paris",
    phone_number:  "0143362798",
    category:        "italian"
  },
 {
    name:         "Georgette",
    address:      "13 rue d'Assas",
    phone_number:  "0151348985",
    category:        "belgian"
  },
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
