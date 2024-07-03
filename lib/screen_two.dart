import 'package:flutter/material.dart';
class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Navigation Drawer')),
        backgroundColor: Color(0xff764abc),

      ),
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Expanded(
          child: ListView.builder(
            itemCount: 100,
              itemBuilder:
                  (context,index){
           return ListTile(
             leading: CircleAvatar(
               backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dreamstime.com%2Fphotos-images%2Fmen-man.html&psig=AOvVaw0XiDeV-GVBN0h1CouU_z3F&ust=1720086030576000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIDxqPrJiocDFQAAAAAdAAAAABAE'),
             ),
             title: Text('Hassaan Malik'),
             onTap: (){
               Navigator.pushNamed(context, ScreenTwo.id);
          
             },
           );
              }
          ),
        )
        ],
      ),
    );
  }
}
