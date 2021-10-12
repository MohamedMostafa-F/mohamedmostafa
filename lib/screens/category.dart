import 'package:flutter/material.dart';
import 'package:flutter_application_1/newdata/newdataa.dart';
class Category extends StatefulWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Category',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black, size: 25.0),
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_basket_outlined), onPressed: () {}),
          ]),
          body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 20,
          ),
        
          SizedBox(
            height: 20.0,
          ),
        
          Container(
 height: 600.0,
 
 child: GridView.builder(
   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.75),
   scrollDirection: Axis.vertical,
   itemCount: 5,
   itemBuilder: (context,index){ return Column(children: [
     Container(
       height: 200.0,width: 100.0,

       margin: EdgeInsets.all(20.0),
     decoration: BoxDecoration(
       
       color: Colors.white,
       image: DecorationImage(fit: BoxFit.fill,
         image: NetworkImage(category[index]['image']))
      
       
     ),
     
     
     )
         //category[index]['image']

     ,Text(category[index]['name'])
     ,Text(category[index]['price'])



   ],);} ,)
   
          )
        ],
      ),
      
    );
  }
}
