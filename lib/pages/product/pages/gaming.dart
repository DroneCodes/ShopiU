
import 'package:flutter/material.dart';
import 'package:moni_test/pages/product/productpage.dart';

class Gaming extends StatelessWidget {

  List<ProductPageGrid> itemList = getProductList();

  static List<ProductPageGrid> getProductList() {
    return [
      ProductPageGrid(name: "Recon", price: "#30,000", imageurl: "assets/images/kindpng_3918483.png", brand: 'PS4'),
      ProductPageGrid(name: "Anthem Pack", price: "#420,000", imageurl: "assets/images/kindpng_6520056.png", brand: 'Xbox'),
      ProductPageGrid(name: "PS4 Pro ", price: "#420,000", imageurl: "assets/images/kindpng_712714.png", brand: 'PS4'),
      ProductPageGrid(name: "Xbox One", price: "#400,000", imageurl: "assets/images/kindpng_4682440.png", brand: 'Xbox'),
      ProductPageGrid(name: "Controller", price: "#25,000", imageurl: "assets/images/kindpng_1171720.png", brand: 'PS4'),
      ProductPageGrid(name: "Xbox One", price: "#410,000", imageurl: "assets/images/kindpng_1159671.png", brand: 'PS4'),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gaming"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(
            Icons.shopping_cart, color: Colors.white,
          ))
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,
        children: itemList.map((ProductPageGrid productPageGrid) {
          return getGridItem(productPageGrid);
        }).toList(),
      ),
    );
  }

  GridTile getGridItem(ProductPageGrid productPageGrid) {
    return GridTile(child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              offset: Offset(3, 2),
              blurRadius: 7
          )
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(8.0),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)
                ),
                child: Image.asset(productPageGrid.imageurl,
                  height: 60,
                  width: double.infinity,)
            ),
          ),
          Text(productPageGrid.name, style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal),),
          Text(productPageGrid.brand, style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal),),

          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(padding: EdgeInsets.only(left: 8.0),
                child: Text(productPageGrid.price, style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                width: 30,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
            ],
          )
        ],
      ),
    ));
  }
}

