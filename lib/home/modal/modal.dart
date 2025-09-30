class Product {
  final int id;
  final String title;
  final String price;
  final String image;
  final double rating;
  final bool? isFeatured;
  final bool? isHotOffer;
  final String? description;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.rating,
    this.isFeatured,
    this.isHotOffer,
    this.description,
  });
}

final List<Product> products = [
  Product(
    id: 1,
    title: "Customized Pharaoh Necklace",
    price: "\$299",
    image: "assets/images/home_images/customize_necles.jpg",
    rating: 4.8,
    isFeatured: true,
    description:
        "Personalized necklace engraved with your name in ancient Egyptian hieroglyphs.",
  ),
  Product(
    id: 2,
    title: "Eye & Ankh Necklace",
    price: "\$189",
    image: "assets/images/home_images/eye_and_ankh.jpg",
    rating: 4.9,
    isFeatured: true,
    description:
        "Unique necklace combining the Eye of Horus for protection and the Ankh, the key of life.",
  ),
  Product(
    id: 3,
    title: "Eye of Horus Necklace",
    price: "\$159",
    image: "assets/images/home_images/eye_of_hours.jpg",
    rating: 4.7,
    isFeatured: true,
    description:
        "Elegant necklace featuring the Eye of Horus, symbol of protection and healing.",
  ),
  Product(
    id: 4,
    title: "Golden Scarab Necklace",
    price: "\$249",
    image: "assets/images/home_images/gcarab_necles.jpg",
    rating: 4.6,
    isHotOffer: true,
    description:
        "Stylish necklace inspired by the scarab, ancient Egyptian symbol of rebirth and strength.",
  ),
  Product(
    id: 5,
    title: "Royal Diamond Ring",
    price: "\$1299",
    image: "assets/images/home_images/gold_rings.jpg",
    rating: 4.9,
    isHotOffer: true,
    description:
        "Exquisite diamond ring crafted in 18k gold, inspired by pharaonic royal jewelry.",
  ),
  Product(
    id: 6,
    title: "Golden Scarab Earrings",
    price: "\$199",
    image: "assets/images/home_images/golden_gcarab_earrings.jpg",
    rating: 4.5,
    isHotOffer: true,
    description:
        "Earrings shaped as golden scarabs, symbolizing luck, strength, and eternity.",
  ),
  Product(
    id: 7,
    title: "Hieroglyphic Cartouche Ring",
    price: "\$349",
    image: "assets/images/home_images/hieroglyphic_cartouche_solid_in_gold.jpg",
    rating: 4.6,
    isHotOffer: true,
    description:
        "Solid gold ring engraved with hieroglyphics inside a royal cartouche frame.",
  ),
  Product(
    id: 8,
    title: "Modern Beauty Necklace",
    price: "\$279",
    image: "assets/images/home_images/modern_beauty_ancient_inspiration.jpg",
    rating: 4.7,
    isHotOffer: true,
    description:
        "A fusion of modern elegance and ancient Egyptian inspiration in a timeless necklace.",
  ),
  Product(
    id: 9,
    title: "Nile Blue Ring",
    price: "\$229",
    image: "assets/images/home_images/nile_ring_blue.jpg",
    rating: 4.8,
    isHotOffer: true,
    description:
        "Blue gemstone ring inspired by the Nile, symbolizing purity, eternity, and life.",
  ),
  Product(
    id: 10,
    title: "Personalized Hieroglyphic Ring",
    price: "\$359",
    image: "assets/images/home_images/personalized_hieroglyphic_ring.jpg",
    rating: 4.6,
    isHotOffer: true,
    description:
        "Customized ring engraved with your name in ancient Egyptian hieroglyphics.",
  ),
  Product(
    id: 11,
    title: "Pharaoh’s Power Ring",
    price: "\$399",
    image: "assets/images/home_images/pharos_power_rings.jpg",
    rating: 4.7,
    isHotOffer: true,
    description:
        "Bold ring designed for the index finger, symbol of pharaonic authority and divine power.",
  ),
  Product(
    id: 12,
    title: "Pharaoh’s Symbols Bracelet",
    price: "\$279",
    image: "assets/images/home_images/pharos_symbols_bracelet.jpg",
    rating: 4.6,
    isHotOffer: true,
    description:
        "Bracelet engraved with Ankh, Eye of Horus, Scarab, Lotus, and Feather of Maat.",
  ),
  Product(
    id: 13,
    title: "Sacred Snake Ring",
    price: "\$249",
    image: "assets/images/home_images/snake_ring.jpg",
    rating: 4.7,
    isHotOffer: true,
    description:
        "Snake-shaped ring symbolizing protection, eternity, and royal power in ancient Egypt.",
  ),
  Product(
    id: 14,
    title: "Wings of the Sun Necklace",
    price: "\$299",
    image: "assets/images/home_images/wings_of_sun.jpg",
    rating: 4.8,
    isHotOffer: true,
    description:
        "Necklace inspired by the winged sun, a powerful pharaonic symbol of divinity and protection.",
  ),
];
