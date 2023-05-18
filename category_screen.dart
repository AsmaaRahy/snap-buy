import 'package:flutter/material.dart';

import 'model/category_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated
      (physics:BouncingScrollPhysics() ,
        itemBuilder:(context,index){
          return Padding(
            padding: const EdgeInsets.all(20),
            child:   Row(
              children: [
                Image.network(categoryList[index].image!,
                  fit: BoxFit.cover,width: 100,
                  height: 100,),
                SizedBox(width: 20,),
                Text(categoryList[index].name!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(onPressed: (

                    ){}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
          );
        },
        separatorBuilder: (context,index)=> Divider(), itemCount:categoryList.length );
  }
  Widget buildCatItem()=>
      Padding(
        padding: const EdgeInsets.all(20),
        child:   Row(
          children: [
            Image(image: NetworkImage('https://fireartstudio.s3-accelerate.amazonaws.com/wp-content/uploads/2018/09/image11-850x638-1.jpg'),
              fit: BoxFit.cover,width: 100,
              height: 100,),
            SizedBox(width: 20,),
            Text('Title',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Spacer(),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
          ],
        ),
      );
}