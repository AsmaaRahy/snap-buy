class CategoriesModel{
  int? id;
  String? name;
  double? price;
  String? image;
  bool? isFavorit;
  bool? isCart;

  CategoriesModel({this.id,
    this.name,
    this.image,
    this.isFavorit,
    this.isCart,
    this.price
  });}
List<CategoriesModel>
categoriesList =[
  CategoriesModel(id:1,name: 'Mobiles',
    price: 1500,
    image: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW9iaWxlJTIwcGhvbmV8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
  ),
  CategoriesModel(id:1,name: 'Laptops',
    price: 1500,
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC939nXG4kI-LwRO0FJvQh5-5ZgR_l0hlwZQrgbHcEWqdPZ1jHPHSUCYGAFDwki_kkvn8&usqp=CAU',
  ),
  CategoriesModel(id:1,name: 'Baby',
    price: 1500,
    image: 'https://m.media-amazon.com/images/I/41IvQ5kojiL._AC_SY450_.jpg',

  ),
  CategoriesModel(id:1,name: 'Back to school',
    price: 1500,
    image: 'https://www.uekkidsbag.com/wp-content/uploads/2021/06/kids-big-capacity-school-backpack-01.jpg',
  ),
];