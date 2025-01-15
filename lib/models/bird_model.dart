// class Bird {
//   final String id;
//   final String name;
//   final String category;
//   final String description;
//
//   Bird( {
//     required this.id,
//     required this.name,
//     required this.category,
//     required this.description,
//   });
// }
//
// final List<Bird> birdList = [
//   Bird(id:'0', name: 'Sparrow', category: 'Small Birds', description: 'Small, plump bird.'),
//   Bird(id:'1',name: 'Eagle', category: 'Birds of Prey', description: 'Large bird with sharp eyesight.'),
//   Bird(id:'2',name: 'Penguin', category: 'Flightless Birds', description: 'Lives in cold climates.'),
//   Bird(id:'3',name: 'Parrot', category: 'Talking Birds', description: 'Known for mimicking sounds.'),
//   Bird(id:'4',name: 'Falcon', category: 'Birds of Prey', description: 'Fast flying predator.'),
// ];

// Map<String, List<Bird>> groupBirdsByCategory(List<Bird> birds) {
//   return birds.fold({}, (Map<String, List<Bird>> map, Bird bird) {
//     map.putIfAbsent(bird.category, () => []).add(bird);
//     return map;
//   });
// }

class Bird {
  final String id;
  final String imgurl;
  final String name;
  final int price;
  final String category; // e.g., "chicken", "duck", "crane"
  final String gender; // e.g., "male", "female", "unknown"
  final String color; // e.g., "brown", "white", "grey"
  final String ageBracket; // e.g., "adult", "medium", "young"
  final String breedName;

  Bird({
    required this.id,
    required this.price,
    required this.imgurl,
    required this.name,
    required this.category,
    required this.gender,
    required this.color,
    required this.ageBracket,
    required this.breedName,
  });
}

List<Bird> birdList = [
  Bird(
    id:"29",
    price:888,
    imgurl:"assets/bird/img18.jpg",
    name: "Grace",
    category: "Crane",
    gender: "unknown",
    color: "grey and white with golden crown",
    ageBracket: "adult",
    breedName: "Grey Crowned Crane",
  ),
  Bird(
    id:"1",
    price:888,
    imgurl:"assets/bird/img18.jpg",
    name: "Royal",
    category: "Crane",
    gender: "unknown",
    color: "grey and white with golden crown",
    ageBracket: "adult",
    breedName: "Grey Crowned Crane",
  ),
  Bird(
    id:"2",
    price:888,
    imgurl:"assets/bird/img21.jpg",
    name: "Cresty",
    category: "Chicken",
    gender: "unknown",
    color: "black and white",
    ageBracket: "medium",
    breedName: "Polish Chicken",
  ),
  Bird(
    id:"3",
    price:888,
    imgurl:"assets/bird/img20.jpg",
    name: "Runner",
    category: "Duck",
    gender: "unknown",
    color: "brown and white",
    ageBracket: "adult",
    breedName: "Indian Runner",
  ),
  // Second image (Ducks around a house)
  Bird(
    id:"4",
    price:888,
    imgurl:"assets/bird/img20.jpg",
    name: "Quacker",
    category: "Duck",
    gender: "male",
    color: "green head, brown body",
    ageBracket: "adult",
    breedName: "Mallard Duck",
  ),
  Bird(
    id:"5",
    price:888,
    imgurl:"assets/bird/img20.jpg",
    name: "Snowy",
    category: "Duck",
    gender: "female",
    color: "white",
    ageBracket: "adult",
    breedName: "Pekin Duck",
  ),
  Bird(
    id:"5",
    price:888,
    imgurl:"assets/bird/img20.jpg",
    name: "Speckles",
    category: "Duck",
    gender: "female",
    color: "brown with blue wing tips",
    ageBracket: "adult",
    breedName: "Rouen Duck",
  ),

  // Third image (White Ducks)
  Bird(
    id:"7",
    price:888,
    imgurl:"assets/bird/img19.jpg",
    name: "Fluffy",
    category: "Duck",
    gender: "unknown",
    color: "white",
    ageBracket: "young",
    breedName: "White Layer Duck",
  ),
  Bird(
    id:"8",
    price:888,
    imgurl:"assets/bird/img19.jpg",
    name: "Sunny",
    category: "Duck",
    gender: "unknown",
    color: "white",
    ageBracket: "young",
    breedName: "White Layer Duck",
  ),

Bird(
  id:"9",
  price:888,
  imgurl:"assets/bird/img13.jpg",
  name: "Fancy Pigeon 1",
  category: "Bird",
  gender: "unknown",
  color: "white",
  ageBracket: "adult",
  breedName: "Fantail Pigeon"),
Bird(
id:"10",
price:888,
  imgurl:"assets/bird/img13.jpg",
  name: "Fancy Pigeon 2",
  category: "Bird",
  gender: "unknown",
  color: "light brown",
  ageBracket: "adult",
  breedName: "Fantail Pigeon"
),

// For the second image (turkeys)
Bird(
id:"11",
price:888,
  imgurl:"assets/bird/img14.jpg",
  name: "Turkey 1",
  category: "Bird",
  gender: "unknown",
  color: "white with red neck",
  ageBracket: "young",
  breedName: "Broad Breasted White Turkey"
),
Bird(
id:"12",
price:888,
  imgurl:"assets/bird/img14.jpg",
  name: "Turkey Group",
  category: "Bird",
  gender: "mixed",
  color: "white with red neck",
  ageBracket: "young",
  breedName: "Broad Breasted White Turkey"
),
Bird(
id:"13",
price:888,
  imgurl:"assets/bird/img15.jpg",
  name: "Grey Rabbit 1",
  category: "rabbit",
  gender: "unknown",
  color: "grey and white",
  ageBracket: "young",
  breedName: "Netherland Dwarf"
),
Bird(
id:"14",
price:888,
  imgurl:"assets/bird/img15.jpg",
  name: "Grey Rabbit 2",
  category: "rabbit",
  gender: "unknown",
  color: "grey and white",
  ageBracket: "young",
  breedName: "Netherland Dwarf"
),

Bird(
id:"15",
price:888,
  imgurl:"assets/bird/img15.jpg",
  name: "Grey Rabbit 3",
  category: "rabbit",
  gender: "unknown",
  color: "grey and white",
  ageBracket: "young",
  breedName: "Netherland Dwarf"
),
Bird(
id:"28",
price:888,
    imgurl:"assets/bird/img18.jpg",
    name: "Grey Crowned Crane",
    category: "Crane",
    gender: "Unknown",
    color: "Grey, white, and gold with black accents",
    ageBracket: "Adult",
    breedName: "Balearica regulorum"
),

Bird(
id:"17",
price:888,
    imgurl:"assets/bird/img16.jpg",
    name: "Barn Owl",
    category: "Owl",
    gender: "Unknown",
    color: "White with golden-brown accents",
    ageBracket: "Adult",
    breedName: "Tyto alba"
),

Bird(
id:"18",
price:888,
    imgurl:"assets/bird/img17.jpg",
    name: "Domestic Goose",
    category: "Goose",
    gender: "Unknown",
    color: "White with orange beak and feet",
    ageBracket: "Adult",
    breedName: "Anser anser domesticus"
),
Bird(
id:"19",
price:888,
    imgurl:"assets/bird/img12.jpg",
    name: "Rooster",
    category: "Chicken",
    gender: "Male",
    color: "Brown, orange, black with iridescent accents",
    ageBracket: "Adult",
    breedName: "Gallus gallus domesticus"
),
  Bird(
    id:"20",
    price:888,
imgurl:"assets/bird/img11.jpg",
name: "Royal",
category: "Crane",
gender: "unknown",
color: "grey and white with golden crown",
ageBracket: "adult",
breedName: "Grey Crowned Crane",
),


  Bird(
    id:"21",
    price:888,
imgurl:"assets/bird/img10.jpg",
name: "Dazzle",
category: "parrot",
gender: "unknown",
color: "green and yellow",
ageBracket: "adult",
breedName: "Budgerigar",
),
  Bird(
    id:"22",
    price:888,
imgurl:"assets/bird/img9.jpg",
name: "Tom",
category: "turkey",
gender: "male",
color: "white and brown with red wattle",
ageBracket: "adult",
breedName: "Domestic Turkey",
), // From img9.jpg: Male turkey (Tom) with distinctive red wattle.
  Bird(
    id:"23",
    price:888,
imgurl:"assets/bird/img9.jpg",
name: "Hen",
category: "turkey",
gender: "female",
color: "brown and black",
ageBracket: "adult",
breedName: "Domestic Turkey",
),Bird(
    id:"24",
    price:888,
imgurl:"assets/bird/img8.jpg",
name: "None",
category: "Duck",
gender: "unknown",
color: "white",
ageBracket: "adult",
breedName: "Pekin Duck",
),
  Bird(
    id:"25",
    price:888,
imgurl:"assets/bird/img6.jpg",
name: "Royal",
category: "Crane",
gender: "unknown",
color: "grey and white with golden crown",
ageBracket: "adult",
breedName: "Grey Crowned Crane",
),


  Bird(
    id:"27",
    price:888,
imgurl:"assets/bird/img7.jpg",
name: "Majesty",
category: "Crane",
gender: "unknown",
color: "grey, white, and black with golden crown",
ageBracket: "adult",
breedName: "Grey Crowned Crane",
), // From img7.jpg: Adult Grey Crowned Crane in captivity.
  Bird(
    id:"16",
    price:888,
imgurl:"assets/bird/img7.jpg",
name: "Chick",
category: "Crane",
gender: "unknown",
color: "brown and beige",
ageBracket: "young",
breedName: "Grey Crowned Crane Chick",
), // From img7.jpg: Chick of Grey Crowned Crane in captivity.
  Bird(
    id:"0",
    price:888,
imgurl:"assets/bird/img5.jpg",
name: "Crown",
category: "Crane",
gender: "unknown",
color: "grey and white with golden crown",
ageBracket: "adult",
breedName: "Grey Crowned Crane",
),
  Bird(
    id:"30",
    price:888,
imgurl:"assets/bird/img4.jpg",
name: "Majestic",
category: "peacock",
gender: "male",
color: "blue, green, and brown with eye-patterned tail feathers",
ageBracket: "adult",
breedName: "Indian Peafowl",
),
  Bird(
    id:"31",
    price:888,
imgurl:"assets/bird/img3.jpg",
name: "Tommy",
category: "turkey",
gender: "male",
color: "white",
ageBracket: "adult",
breedName: "White Holland Turkey",
),
  Bird(
    id:"32",
    price:888,
imgurl:"assets/bird/img3.jpg",
name: "Snow",
category: "Duck",
gender: "unknown",
color: "white",
ageBracket: "adult",
breedName: "Pekin Duck",
),
  Bird(
    id:"33",
    price:888,
imgurl:"assets/bird/img2.jpg",
name: "Cleopatra",
category: "goose",
gender: "mixed",
color: "beige with dark eye patches and reddish-pink legs",
ageBracket: "adult",
breedName: "Egyptian Goose",
),
  Bird(
    id:"34",
    price:888,
imgurl:"assets/bird/img1.jpg",
name: "Quacker",
category: "Duck",
gender: "unknown",
color: "black and white",
ageBracket: "adult",
breedName: "Muscovy Duck",
),
  Bird(
    id:"35",
    price:888,
imgurl:"assets/bird/img0.jpg",
name: "Speedy",
category: "ostrich",
gender: "unknown",
color: "brown and beige",
ageBracket: "young",
breedName: "Common Ostrich",
),
];