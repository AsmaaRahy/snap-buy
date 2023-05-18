class HomeModel{
  int? id;
  String? name;
  double? price;
  double?oldPrice;
  String? image;
  bool? isFavorit;
  bool? isCart;
  String? disc;

  HomeModel({this.id,
    this.name,
    this.image,
    this.isFavorit,
    this.isCart,
    this.price,
    this.disc,
    this.oldPrice,
  });}
List<HomeModel>
HomeList =[
  HomeModel(id:1,name: 'Lenovo IdeaPad 3 15ALC6 Laptop - Ryzen 7 5700U 8 Cores, 8GB RAM, 1TB HDD, Dos - Arctic Grey',
    price: 15000,
    oldPrice: 22000,
    image: 'https://m.media-amazon.com/images/I/81VBQJoT5JL._AC_SX450_.jpg',
    isFavorit:false,
    isCart: false,

  ),
  HomeModel(id:1,name: 'Joyroom JR-T03S PLUS TWS Bluetooth Wireless Headset, Dual-Core Chip wiith Ultra Long Time Battary - White',
    price: 875,
    oldPrice: 1333,
    image: 'https://m.media-amazon.com/images/I/41aoyjVszvL._AC_SY606_.jpg',
    isFavorit:false,
    isCart: false,
 ),
  HomeModel(id:1,name: 'Oppo A77S Dual SIM,128GB RAM, 8GB ROM - Blue',
    price: 7000,
    oldPrice: 7800,
    image: 'https://m.media-amazon.com/images/I/61yw58HeRiL._AC_SX425_.jpg',
    isFavorit:false,
    isCart: false,
  ),
  HomeModel(id:1,name: 'Dell G15 5511 Gaming Laptop - 11th Intel Core i7-11800H 8-Cores, 16GB RAM, 512GB SSD, NVIDIA Geforce RTX3050 4GB GDDR6 Graphics',
    price:35000 ,
    oldPrice: 37000,
    image: 'https://m.media-amazon.com/images/I/61YEZ-ABalL._AC_SX450_.jpg',
    isFavorit:false,
    isCart: false,
  ),
  HomeModel(id:1,name: 'Oppo A77S Dual SIM,128GB RAM, 8GB ROM -Black',
    price: 4100,
    oldPrice: 4950,
    image: 'https://m.media-amazon.com/images/I/51FkGkFqdbL._AC_SX425_.jpg',
    isFavorit:false,
    isCart: false,
  ),
  HomeModel(id:1,name: 'Adidas ultrabounce shoes running shoes for men',
    price: 1900,
    oldPrice: 2624,
    image: 'https://m.media-amazon.com/images/I/61d1Uk6JfuL._AC_SY500_.jpg',
    isFavorit:false,
    isCart: false,
  ),
];