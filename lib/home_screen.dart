import 'package:chat_app/screen_two.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child:Padding(
          padding: const EdgeInsets.all(0),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xff764abc),
                ),
                  currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.dreamstime.com%2Fphotos-images%2Fmen-man.html&psig=AOvVaw0XiDeV-GVBN0h1CouU_z3F&ust=1720086030576000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCIDxqPrJiocDFQAAAAAdAAAAABAE'),
                  ),
                  accountName: Text('Hassaan Malik'),
                  accountEmail: Text('malikhassaan83@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1'),
              onTap: (){
                Navigator.pushNamed(context,HomeScreen.id);

              },
            ),
              ListTile(
                leading: Icon(Icons.calculate),
                title: Text('Page 2'),
                onTap: (){
                  Navigator.pushNamed(context, ScreenTwo.id);

                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: (){

                },
              ),
            ],
          ),
          
        )
      ),
       appBar:  AppBar(
        title: Center(child: Text('Navigation Drawer')),
        backgroundColor: Color(0xff764abc),

      ),
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
            onPressed:(
                ){
              Navigator.pushNamed(context, ScreenTwo.id);
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));
            } ,
            child:Center(child: Text('Screen 1'))),
      ],
      ),
    );
  }
}
