# I will be basing my data structure on NYC's Boroughs

NYC_Boroughs = {
  manhattan: {
    neighborhood_info: {
      contained_hoods: ['Upper East Side', 'Harlem', 'Chelsea'],
      relative_health_index: 'Great',
      bad_traffic_index: 'High',
      streets_running_through: ["broadway","madison"],
      famous_landmarks: ['Central Park','Empire State Building','U.S. Intrepid']
    },
    population: 'crazy big'
  },
  bronx:{
    neighborhood_info: {
      contained_hoods: ['Bedford Park', 'Fordham', 'Norwood'],
      relative_health_index: 'Poor',
      bad_traffic_index: 'Low',
      streets_running_through: ['Reeder St','Shepart Ave','Asylum Rd'],
      famous_landmarks:['Yankee Stadium','The Cloister'],
    },
    population: 'big',
  },
}

NYC_Boroughs[:manhattan]
NYC_Boroughs[:manhattan][:population]
NYC_Boroughs[:manhattan][:neighborhood_info][:contained_hoods][1]
NYC_Boroughs[:bronx][:neighborhood_info][:famous_landmarks][0]







  
