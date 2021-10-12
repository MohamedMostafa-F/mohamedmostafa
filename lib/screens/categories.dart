import 'package:flutter/material.dart';

class CategoryData extends StatefulWidget {
  const CategoryData({Key? key}) : super(key: key);

  @override
  _CategoryDataState createState() => _CategoryDataState();
}

class _CategoryDataState extends State<CategoryData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://s7d5.scene7.com/is/image/Anthropologie/55331821-1089-VL0092-WFRG_b?\$a15-mto-product\$&hei=900&qlt=80&fit=constrain'))),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              )
            ],
          ),
          ListTile(
            title: Text(
              'Relaxed Saguaro Sofa',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Classic Traditional',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            trailing: Text(
              '\$2,598',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              Container(
                height: 200,
                width: 400,
                color: Colors.white,
                child:                   Text('Boasting down-filled cushions that slope over its arms with ease\n, this sofa offers a spirit of relaxation and respite.\n A low back and a deep seat lend to an informal silhouette,\n yet it retains a sense of polished modernity that enhances just about any style of living space.',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)
,
              )
            ],
          ),
          Container(

            height: 140,
            
            color: Colors.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(   
                  decoration: BoxDecoration(border: Border.all(color:  Colors.red)),
                  height: 100,
                  width: 150,
                   child: IconButton(onPressed: (){}, icon:Icon(Icons.favorite_border,color: Colors.black,),          )
),


              Container(
                height: 50.0,
                width: 300.0,
color: Colors.orange,
child: Text('Add to card',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

              )
              
            ],),
          )
        ],
      ),
    );
  }
}
