import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 200,
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleSpacing: 20,
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage:
                      NetworkImage('https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwyMzQ5ODgwfHxlbnwwfHx8fA%3D%3D&w=1000&q=80'),
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        CircleAvatar(backgroundColor: Colors.white,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,))
                      ],
                    )
                  ],
                ),
              ]),
        ),
        body:Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(backgroundColor: Colors.blueGrey),
                    Icon(Icons.person,color: Colors.white,)
                  ],
                ),
                SizedBox(width: 12,),
                Text('My Account',style: TextStyle(fontSize: 20),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(backgroundColor: Colors.blueGrey),
                    Icon(Icons.notifications_active_outlined,color: Colors.white,)
                  ],
                ),
                SizedBox(width: 12,),
                Text('Notifications',style: TextStyle(fontSize: 20),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(backgroundColor: Colors.blueGrey),
                    Icon(Icons.question_mark_outlined,color: Colors.white,)
                  ],
                ),
                SizedBox(width: 12,),
                Text('Help & Feedback',style: TextStyle(fontSize: 20),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),
            Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(backgroundColor: Colors.blueGrey),
                    Icon(Icons.phone_in_talk_outlined,color: Colors.white,)
                  ],
                ),
                SizedBox(width: 12,),
                Text('Connect Us',style: TextStyle(fontSize: 20),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),Row(
              children: [
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(backgroundColor: Colors.blueGrey),
                    Icon(Icons.exit_to_app_outlined,color: Colors.white,)
                  ],
                ),
                SizedBox(width: 12,),
                Text('Sign out',style: TextStyle(fontSize: 20),),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
              ],
            ),

          ],
        )


    );
  }
}
