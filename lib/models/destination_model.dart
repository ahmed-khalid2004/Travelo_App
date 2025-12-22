class Destination {
  final String id;
  final String title;
  final String location;
  final String country;
  final double rating;
  final String mainImage;
  final List<String> galleryImages;
  final String description;
  final List<String> categories;
  bool isFavorite;

  Destination({
    required this.id,
    required this.title,
    required this.location,
    required this.country,
    required this.rating,
    required this.mainImage,
    required this.galleryImages,
    required this.description,
    required this.categories,
    this.isFavorite = false,
  });
}

class DestinationsData {
  static List<Destination> getAllDestinations() {
    return [
      Destination(
        id: '1',
        title: 'Taj Mahal',
        location: 'Agra',
        country: 'India',
        rating: 4.8,
        mainImage: 'https://images.unsplash.com/photo-1564507592333-c60657eea523?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1587474260584-136574528ed5?w=400',
          'https://images.unsplash.com/photo-1524492412937-b28074a5d7da?w=400',
          'https://images.unsplash.com/photo-1548013146-72479768bada?w=400',
        ],
        description: 'The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in Agra. It was commissioned in 1631 by the Mughal emperor Shah Jahan to house the tomb of his favourite wife, Mumtaz Mahal.',
        categories: ['Historical', 'Popular', 'Romantic'],
      ),
      Destination(
        id: '2',
        title: 'Cappadocia',
        location: 'Central Anatolia',
        country: 'Turkey',
        rating: 4.9,
        mainImage: 'https://images.unsplash.com/photo-1548013146-72479768bada?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1609137144813-7d9921338f24?w=400',
          'https://images.unsplash.com/photo-1541432901042-2d8bd64b4a9b?w=400',
          'https://images.unsplash.com/photo-1526048598645-62b31f067fb8?w=400',
        ],
        description: 'Cappadocia is a semi-arid region in central Turkey noted for its distinctive fairy chimneys, tall cone-shaped rock formations. The region is famous for hot air balloon rides and underground cities.',
        categories: ['Adventure', 'Popular', 'Nature'],
      ),
      Destination(
        id: '3',
        title: 'Eiffel Tower',
        location: 'Paris',
        country: 'France',
        rating: 4.9,
        mainImage: 'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1549144511-f099e773c147?w=400',
          'https://images.unsplash.com/photo-1511739001486-6bfe10ce785f?w=400',
          'https://images.unsplash.com/photo-1431274172761-fca41d930114?w=400',
        ],
        description: 'The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.',
        categories: ['Historical', 'Popular', 'Romantic'],
      ),
       Destination(
        id: '4',
        title: 'Pyramids',
        location: 'Giza',
        country: 'Egypt',
        rating: 4.9,
        mainImage: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Great_Pyramid_of_Giza.jpg/960px-Great_Pyramid_of_Giza.jpg',
        galleryImages: [
          'https://images.unsplash.com/photo-1539768942893-daf53e448371?w=400',
          'https://images.unsplash.com/photo-1568322445389-f64ac2515020?w=400',
          'https://images.unsplash.com/photo-1553913861-c0fddf2619ee?w=400',
        ],
          description:'The Pyramids of Giza are one of the most iconic archaeological sites in the world and the only remaining wonder of the ancient Seven Wonders. Built over 4,500 years ago, the complex includes the Great Pyramid of Khufu, the Pyramid of Khafre, the Pyramid of Menkaure, and the Great Sphinx. These structures demonstrate the advanced engineering, architectural precision, and cultural significance of Ancient Egyptian civilization.',
          categories: ['Historical', 'Ancient', 'World Wonder'],
      ),
      Destination(
        id: '5',
        title: 'Great Wall of China',
        location: 'Beijing',
        country: 'China',
        rating: 4.8,
        mainImage: 'https://images.unsplash.com/photo-1508804185872-d7badad00f7d?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1547981609-4b6bfe67ca0b?w=400',
          'https://images.unsplash.com/photo-1529925008535-66f0d90c4787?w=400',
          'https://images.unsplash.com/photo-1558976825-6b1b03a03719?w=400',
        ],
        description: 'The Great Wall of China is a series of fortifications made of stone, brick, tamped earth, wood, and other materials. It was built to protect the Chinese states against raids and invasions.',
        categories: ['Historical', 'Adventure', 'Ancient'],
      ),
      Destination(
        id: '6',
        title: 'Al Ula',
        location: 'Medina Province',
        country: 'Saudi Arabia',
        rating: 4.8,
        mainImage: 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1591608971362-f08b2a75731a?w=400',
          'https://images.unsplash.com/photo-1578895101408-1a36b834405b?w=400',
          'https://images.unsplash.com/photo-1580837119756-563d608dd119?w=400',
        ],
        description: 'AlUla is an ancient oasis city located in Medina Province. It features stunning rock formations, ancient archaeological sites, and the famous Hegra, Saudi Arabia\'s first UNESCO World Heritage Site.',
        categories: ['Historical', 'Desert', 'Ancient'],
      ),
      Destination(
        id: '7',
        title: 'Santorini',
        location: 'Cyclades',
        country: 'Greece',
        rating: 4.9,
        mainImage: 'https://images.unsplash.com/photo-1570077188670-e3a8d69ac5ff?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1613395877344-13d4a8e0d49e?w=400',
          'https://images.unsplash.com/photo-1533105079780-92b9be482077?w=400',
          'https://images.unsplash.com/photo-1580837119756-563d608dd119?w=400',
        ],
        description: 'Santorini is a volcanic island in the Cyclades group of the Greek islands. It is famous for its dramatic views, stunning sunsets, whitewashed houses, and blue-domed churches.',
        categories: ['Beach', 'Romantic', 'Relaxation'],
      ),
      Destination(
        id: '8',
        title: 'Machu Picchu',
        location: 'Cusco Region',
        country: 'Peru',
        rating: 4.9,
        mainImage: 'https://images.unsplash.com/photo-1587595431973-160d0d94add1?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1526392060635-9d6019884377?w=400',
          'https://images.unsplash.com/photo-1560699138-816c1a4e0976?w=400',
          'https://images.unsplash.com/photo-1580837119756-563d608dd119?w=400',
        ],
        description: 'Machu Picchu is a 15th-century Inca citadel located in the Eastern Cordillera of southern Peru. It is the most familiar icon of Inca civilization and sits 2,430 meters above sea level.',
        categories: ['Historical', 'Adventure', 'Ancient'],
      ),
      Destination(
        id: '9',
        title: 'Bosphorus Strait',
        location: 'Istanbul',
        country: 'Turkey',
        rating: 4.7,
        mainImage: 'https://images.unsplash.com/photo-1559827260-dc66d52bef19?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1524231757912-21f4fe3a7200?w=400',
          'https://images.unsplash.com/photo-1527838832700-5059252407fa?w=400',
          'https://images.unsplash.com/photo-1541432901042-2d8bd64b4a9b?w=400',
        ],
        description: 'The Bosphorus is a narrow strait that connects the Black Sea with the Sea of Marmara. It divides Istanbul between Europe and Asia, and offers spectacular views of both continents.',
        categories: ['Relaxation', 'Cultural', 'Nature'],
      ),
      Destination(
        id: '10',
        title: 'Maldives Beach',
        location: 'Male',
        country: 'Maldives',
        rating: 4.9,
        mainImage: 'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?w=800',
        galleryImages: [
          'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?w=400',
          'https://images.unsplash.com/photo-1589197331516-e4d6c5b1d7a7?w=400',
          'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400',
        ],
        description: 'The Maldives is a tropical paradise known for its crystal-clear turquoise waters, white sandy beaches, and luxury overwater bungalows. Perfect for relaxation and water sports.',
        categories: ['Beach', 'Relaxation', 'Romantic'],
      ),
    ];
  }
}