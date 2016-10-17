highway = {
  red_truck: {
    james: ['amex card', 
      'pocket knife',
      'lint'],
    holly: ['one marble']
    },
  green_van: {
    stewart: ["iPhone6", 
      wallet = {
        money: "2".to_i,
        number_cards: "4".to_i
      }]
    },
  blue_car_on_fire: {
    sheryl_wearing_a_dress: [],    # bc she has no pockets on dress.
    ryan: ["glasses",
      "Galaxy Note 7",
      "sticky note to buy iphone7"
    ]
  }
}

puts highway[:green_van][:stewart][1][:number_cards]

puts puts highway[:blue_car_on_fire]

puts  highway[:red_truck][:holly]

puts highway[:blue_car_on_fire][:ryan][2]

