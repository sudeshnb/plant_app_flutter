class Plant {
  final String name;
  final List images;
  final String temp;
  final String pot;
  final String description;
  final String price;
  final String height;

  Plant({
    required this.name,
    required this.images,
    required this.temp,
    required this.pot,
    required this.description,
    required this.price,
    required this.height,
  });
}

List<Plant> plants = [
  Plant(
    name: 'Turf pot plant',
    images: [
      'assets/image/03.png',
      'assets/image/03.png',
      'assets/image/03.png',
    ],
    temp: '18 C to 25 C',
    pot: 'Self Watering Pot',
    description:
        'Small leaf plant in a turf pot for your home or office decor.',
    price: '\$85 ',
    height: '40cm - 50cm',
  ),
  Plant(
    name: 'Scandinavian Plant',
    images: [
      'assets/image/02.png',
      'assets/image/02.png',
      'assets/image/02.png',
    ],
    temp: '18 C to 25 C',
    pot: 'Self Watering Pot',
    description: 'Low maintenance flower in a white ceramic pot.',
    price: '\$45 ',
    height: '40cm - 50cm',
  ),
  Plant(
    name: 'Wall Mounted Plant Glass Pot',
    images: [
      'assets/image/01.png',
      'assets/image/01.png',
      'assets/image/01.png',
    ],
    temp: '18 C to 25 C',
    pot: 'Self Watering Pot',
    description:
        'Plant in a glass bowl, it can be mounted on a wall or ceiling (holders include).',
    price: '\$85 ',
    height: '40cm - 50cm',
  ),
];
