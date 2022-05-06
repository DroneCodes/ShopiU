
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moni_test/pages/product/productpage.dart';

class Gaming extends StatefulWidget {
  @override
  _GamingState createState() => _GamingState();
}

class _GamingState extends State<Gaming> {
  int _crossAxisCount = 2;
  double _childAspectRatio= 1.5;

  ViewType _viewtype = ViewType.grid;

  List<ProductPageGrid> itemlist = getImageDataList();

  static List<ProductPageGrid> getImageDataList() {
    return [
      ProductPageGrid(name: "Headphones", price: "#30,000", imageurl: "assets/images/kindpng_3918483.png"),
      ProductPageGrid(name: "Xbox One", price: "#420,000", imageurl: "assets/images/kindpng_6520056.png"),
      ProductPageGrid(name: "PS4 Pro ", price: "#420,000", imageurl: "assets/images/kindpng_712714.png"),
      ProductPageGrid(name: "Xbox One", price: "#400,000", imageurl: "assets/images/kindpng_4682440.png"),
      ProductPageGrid(name: "PS4 Controller", price: "#25,000", imageurl: "assets/images/kindpng_1171720.png"),
      ProductPageGrid(name: "Xbox One", price: "#410,000", imageurl: "assets/images/kindpng_1159671.png"),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gaming"),

        actions: [
          IconButton(onPressed: () {
            if(_viewtype == ViewType.list) {
              _viewtype = ViewType.grid;
              _crossAxisCount = 2;
              _childAspectRatio = 1.5;
            } else {
              _crossAxisCount = 1;
              _childAspectRatio = 5;
              _viewtype = ViewType.list;
            }
            setState(() {
              
            });
          }, icon: Icon(
              _viewtype == ViewType.list ? Icons.grid_on : Icons.view_list
          ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Theme.of(context).canvasColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0),
              blurRadius: 6.0
            )
          ]
        ),
        child: Container(
          margin: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: _crossAxisCount,
            childAspectRatio: _childAspectRatio,
            children: itemlist.map((ProductPageGrid productPageGrid) {
              return getGridItem(productPageGrid);
            }).toList(),
          ),
        ),
      ),
    );
  }

  GridTile getGridItem(ProductPageGrid productPageGrid) {
    return GridTile(
      child: (_viewtype == ViewType.list) ? Container(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(productPageGrid.imageurl),
            ),
            SizedBox(width: 5,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productPageGrid.name),
                SizedBox(height: 5,),
                Text(productPageGrid.price)
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.add, color: Colors.black,)
          ],
        ),
      ) : Column(
        children: [
          Expanded(child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(productPageGrid.imageurl),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(productPageGrid.price, style: TextStyle(fontSize: 10),),
              SizedBox(width: 4,),
              Container(
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Text(productPageGrid.name, style: TextStyle(fontSize: 15, color: Colors.black),)),
              SizedBox(width: 4,),
              Icon(Icons.add, color: Colors.black, )
            ],
          )
        ],
      ),
    );
  }
}
enum ViewType{grid, list}

