import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Custom Images"),
      ),
      body: ListView(
        children: [
          _itemList( text: 'Next Gen', image: 'assets/images/images_1.jpg'),
          _itemList( text: 'Next Gen', image: 'assets/images/images2.jpg'),
          _itemList( text: 'Next Gen', image: 'assets/images/images3.jpg'),
          _itemList( text: 'Next Gen', image: 'assets/images/images4.jpg'),
          _itemList( text: 'Next Gen', image: 'assets/images/images1.jpg'),

        ],
      ),
    );
  }


}

   Widget _itemList({text, image}){
        return Container(
          margin: EdgeInsets.all(15),
          height: 200,
          width: 450,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(text, style: TextStyle(color: Colors.white, fontSize: 25),),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.2)
                    ]
                )
            ),
          ),
        );
   }
