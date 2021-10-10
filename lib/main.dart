import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomeScreen(),
    
    );
  }
}
class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({ Key? key }) : super(key: key);

  @override
  _MyHomeScreenState createState() => _MyHomeScreenState();
}
class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                  Icon(Icons.search),
                  SizedBox(width: 10,),
                  Text('Search',style: TextStyle(color: Colors.grey[600])),],
                  
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              MyCardWidget('Create Room','https://wabetainfo.com/wp-content/uploads/2020/04/Rooms_FB.png'),
              SizedBox(width: 10,),
              MyCardWidget('Salma','https://associationsnow.com/wp-content/uploads/2020/08/GettyImages-1164909633-600x360.jpg'),
              SizedBox(width: 10,),
              MyCardWidget('Nada','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAhM054Np3griQmXB1VPpVY7Czbv4bLvS02LqYgWL7HdDYz6ulQXJbGRnHE0IQoWAVECM&usqp=CAU'),
              SizedBox(width: 10,),
              MyCardWidget('Aseel','https://www.bizlibrary.com/wp-content/uploads/2017/10/24151335/Personal-brand.jpg'),
            ],
          ) ,
          SizedBox(height: 20,),
          MyList('Nada', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAhM054Np3griQmXB1VPpVY7Czbv4bLvS02LqYgWL7HdDYz6ulQXJbGRnHE0IQoWAVECM&usqp=CAU'),
          SizedBox(height: 20,),
          MyList('Aseel', 'https://www.bizlibrary.com/wp-content/uploads/2017/10/24151335/Personal-brand.jpg')
          

      ],),   
    );
  }
}


class MyCardWidget extends StatelessWidget {
 final String label;
 final String networkImage;
  const MyCardWidget(this.label,this.networkImage,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(networkImage),
                ),
                Text(label),
                
                ],
              );
  }
}

class MyList extends StatelessWidget {
  final String label;
 final String networkImage;
  const MyList(this.label,this.networkImage,{ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: CircleAvatar(radius: 30,
            backgroundImage:NetworkImage(networkImage),),
            title: Text(label),
            subtitle:Text('Hi! How are you?')
          
      
    );
  }
}