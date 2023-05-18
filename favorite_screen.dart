import 'package:flutter/material.dart';

import 'model/favorite_model.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: GridView.builder(

          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
              childAspectRatio: 1/1.1,
              mainAxisSpacing: 0.5,
              crossAxisSpacing: 10)

          , itemCount:FavList.length,
          itemBuilder: (context,index){
            return Column(
              children: [
                Stack(
                  children: [
                    Image.network(FavList[index].image!),

                    // IconButton:Icon( Icons.favorite

                    // ),
                  ],
                ),
                Text(FavList [index].name!),

                Row(
                  children: [
                    Text(FavList[index].price.toString()),
                  ],
                ),
              ],
            );
          }),
    );

  }
}
