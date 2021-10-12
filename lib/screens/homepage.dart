import 'package:flutter/material.dart';
import 'package:flutter_application_1/newdata/newdataa.dart';
import 'package:flutter_application_1/screens/categories.dart';
import 'package:flutter_application_1/screens/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'HOME',
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
      drawer: Drawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search produce',
                hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder:(_){return CategoryData();}));
            },
            child: Container(
              height: 200.0,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1592920567-mid-century-double-pop-up-coffee-table-walnut-white-marble-2-c.jpg'))),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            
mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(_) {return Category();}));
                },
                child: Text('View all', 
                    style: TextStyle(fontSize: 20.0, color: Colors.black,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          Container(
 height: 200.0,
 
 child: ListView.builder(
   scrollDirection: Axis.horizontal,
   itemCount: 5,
   itemBuilder: (context,index){ return Column(children: [
     Container(
       height: 120.0,width: 100.0,

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
   
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
            
                height: 250.0, width: 150.0,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(fit: BoxFit.fill,
                  
                    image: NetworkImage('https://content3.jdmagicbox.com/comp/def_content/furniture_dealers/default-furniture-dealers-4.jpg?clr=3a3a2c'))
                ),
              )
              ,Container(
                height: 250.0, width: 150.0,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(fit: BoxFit.fill,
                  
                    image: NetworkImage('https://content3.jdmagicbox.com/comp/def_content/furniture_dealers/default-furniture-dealers-4.jpg?clr=3a3a2c'))
                ),
              )
            ],
          ),
          Container(
            height: 150,
            width: 150,
            color: Colors.red,
          )


        ],
      ),
    );
  }
}
