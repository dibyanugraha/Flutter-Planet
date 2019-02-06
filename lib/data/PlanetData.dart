import 'package:planet/models/Planet.dart';

List<Planet> planets = [
  const Planet(
    id: "1",
    name: "Mercury",
    location: "Milky Way Galaxy",
    distance: "I-dunno-m Km",
    gravity: "Me-neither m/s",
    description: "The closest planet to the Sun",
    image: "assets/images/mercury.png",
    picture: "https://c1.staticflickr.com/9/8105/8497927473_2845ae671e_b.jpg"
  ),
  const Planet(
    id: "2",
    name: "Mars",
    location: "Milky Way Galaxy",
    distance: "227.9m Km",
    gravity: "3.711 m/s",
    description: "This is where the martian lives",
    image: "assets/images/mars.png",
    picture: "https://www.nasa.gov/sites/default/files/thumbnails/image/pia21723-16.jpg"
  ),
  const Planet(
    id: "3",
    name: "Earth",
    location: "Milky Way Galaxy",
    distance: "wo-lo-m Km",
    gravity: "9.8 m/s",
    description: "This is where we lives",
    image: "assets/images/earth.png",
    picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/thumbnails/image/iss042e340851_1.jpg"
  ),
  const Planet(
    id: "4",
    name: "Moon",
    location: "Milky Way Galaxy",
    distance: "0_o Km",
    gravity: "dunno, 3,- m/s",
    description: "Weeeee",
    image: "assets/images/moon.png",
    picture: "https://farm5.staticflickr.com/4086/5052125139_43c31b7012.jpg"
  ),
  const Planet(
    id: "5",
    name: "Neptune",
    location: "Milky Way Galaxy",
    distance: "far-far-away Km",
    gravity: "flying man m/s",
    description: "Ho ho ho",
    image: "assets/images/neptune.png",
    picture: "https://www.nasa.gov/sites/default/files/styles/full_width_feature/public/images/110411main_Voyager2_280_yshires.jpg"
  ),
];