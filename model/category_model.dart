class CategoryModel{
  int? id;
  String? name;
  String? image;

  CategoryModel({this.id,
    this.name,
    this.image,
  });}
List<CategoryModel>
categoryList =[
  CategoryModel(id:1,name: 'Mobiles',

    image: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bW9iaWxlJTIwcGhvbmV8ZW58MHx8MHx8fDA%3D&w=1000&q=80',
  ),CategoryModel(id:1,name: 'Laptops',
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQC939nXG4kI-LwRO0FJvQh5-5ZgR_l0hlwZQrgbHcEWqdPZ1jHPHSUCYGAFDwki_kkvn8&usqp=CAU',
  ),CategoryModel(id:1,name: 'Baby',
    image: 'https://m.media-amazon.com/images/I/41IvQ5kojiL._AC_SY450_.jpg',
  ),CategoryModel(id:1,name: 'Back to school',
    image: 'https://www.uekkidsbag.com/wp-content/uploads/2021/06/kids-big-capacity-school-backpack-01.jpg',
  ),
  CategoryModel(id:2,name: 'Women',
    image: 'https://fireartstudio.s3-accelerate.amazonaws.com/wp-content/uploads/2018/09/image11-850x638-1.jpg',

  ),
  CategoryModel(id:4,name: 'shose & Bages',
    image: 'https://www.uekkidsbag.com/wp-content/uploads/2021/06/kids-big-capacity-school-backpack-01.jpg',

  ),
];