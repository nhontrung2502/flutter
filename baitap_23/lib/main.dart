import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Shoe Store",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue[300],
        ),
        body: SafeArea(
          child: ShoeStore(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ShoeStore extends StatefulWidget {
  const ShoeStore({super.key});

  @override
  State<ShoeStore> createState() => _ShoeStoreState();
}

class _ShoeStoreState extends State<ShoeStore> {
  List<Map<String, dynamic>> cartList = [];
  List<Map<String, dynamic>> itemList = [
    {
      "itemId": 1,
      "itemName": "Nike Air Max",
      "itemImage": "./assets/imgs/airmax.jpg",
      "itemPrice": 120.00,
    },
    {
      "itemId": 2,
      "itemName": "Adidas Ultra Boost",
      "itemImage": "./assets/imgs/ultraboost.jpg",
      "itemPrice": 150.00,
    },
    {
      "itemId": 3,
      "itemName": "Nike Air Max 2",
      "itemImage": "./assets/imgs/airmax.jpg",
      "itemPrice": 160.00,
    },
    {
      "itemId": 4,
      "itemName": "Nike Air Max 4",
      "itemImage": "./assets/imgs/airmax.jpg",
      "itemPrice": 170.00,
    },
    {
      "itemId": 5,
      "itemName": "Adidas Ultra Boost 2",
      "itemImage": "./assets/imgs/ultraboost.jpg",
      "itemPrice": 160.00,
    }
  ];

  calculateTotal(cartList) {
    double total = 0;
    for (var item in cartList) {
      total += item['itemPrice'] * item['itemQty'];
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final itemInfo = cartList[index];
                return Container(
                  width: double.infinity,
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 0),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        itemInfo['itemImage'],
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      itemInfo['itemName'],
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price: \$${itemInfo['itemPrice']}",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                          "Qty: ${itemInfo['itemQty']}",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue[300],
                          ),
                        ),
                      ],
                    ),
                    trailing: Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            cartList.removeWhere((item) => item['itemId'] == itemInfo['itemId']);
                          });
                        },
                        child: Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                );
              },
              childCount: cartList.length,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Total:",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "\$${calculateTotal(cartList)}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          SliverToBoxAdapter(
            child: Divider(height: 1),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: Text(
              "Danh Sách Giày",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: double.infinity,
              height: 290,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  final itemInfo = itemList[index];
                  return Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(247, 242, 249, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                        child: Image.asset(
                          "${itemInfo['itemImage']}",
                          width: 170,
                          height: 170,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${itemInfo['itemName']}",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                "\$${itemInfo['itemPrice']}",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue[300],
                                ),
                                onPressed: () {
                                  setState(() {
                                    var existingIndex = cartList.indexWhere((item) => item['itemId'] == itemInfo['itemId']);
                                    if (existingIndex != -1) {
                                      cartList[existingIndex]['itemQty'] += 1;
                                    } else {
                                      cartList.add({
                                        "itemId": itemInfo['itemId'],
                                        "itemName": itemInfo['itemName'],
                                        "itemImage": itemInfo['itemImage'],
                                        "itemPrice": itemInfo['itemPrice'],
                                        "itemQty": 1,
                                      });
                                    }
                                  });
                                },
                                child: Text(
                                  "Thêm vào giỏ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
