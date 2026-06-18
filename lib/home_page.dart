import 'package:flutter/material.dart';
import 'package:stistch_project/checkout_page.dart';
import 'package:stistch_project/product_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> containersList = [
    {
      "image": Image.asset(
        "assets/images/first.jpg", // height: 180,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      "text": "Hand Thrown Ceramic vase",
      "text2": "shgsjabkj kjhsugajjshakj jhbdgsujdjsbnjk ujdgsjakjgdk",
      "price": "45.9",
    },
    {
      "image": Image.asset(
        "assets/images/lamp1.jpg",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      "text": "Hand Thrown Ceramic vase",
      "text2": "shgsjabkj kjhsugajjshakj jhbdgsujdjsbnjk ujdgsjakjgdk",
      "price": "45.9",
    },
    {
      "image": Image.asset(
        "assets/images/linen.jpg",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      "text": "Hand Thrown Ceramic vase",
      "text2": "shgsjabkj kjhsugajjshakj jhbdgsujdjsbnjk ujdgsjakjgdk",
      "price": "45.9",
    },
    {
      "image": Image.asset(
        "assets/images/first.jpg",
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      "text": "Hand Thrown Ceramic vase",
      "text2": "shgsjabkj kjhsugajjshakj jhbdgsujdjsbnjk ujdgsjakjgdk",
      "price": "45.9",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Terra Shop",
          style: TextStyle(
            color: Color(0xFF4A7C59),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CheckoutPage()),
              );
            },
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: AlignmentGeometry.topCenter,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),

                      child: Image.asset(
                        'assets/images/plants.jpg',
                        width: double.infinity,
                        height: 300, // explicit height
                        fit: BoxFit.cover,
                      ),
                    ),

                    Container(
                      height: 300, // match image height
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.green.shade800.withOpacity(0.7),
                            Colors.green.shade800.withOpacity(0.3),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Text(
                        'NEW ARRIVALS',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 20,
                      child: Text(
                        'Sustinable \nLiving \nCollection',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 160,
                      left: 20,
                      child: Text(
                        'Sustinable Living Collection sustinable Living Collection \nsustinable Living Collection',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Positioned(
                      top: 220,
                      left: 20,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF77a781),
                          fixedSize: const Size(180, 35),
                        ),
                        child: Text(
                          "EXPLORE COLLECTION",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: .center,

                children: [
                  Text(
                    "Popular Products ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(color: Color(0xFF77a781)),
                    ),
                  ),
                  Icon(Icons.arrow_forward, size: 15, color: Color(0xFF77a781)),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final item = containersList[index];
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProductDetails(),
                            ),
                          );
                        },
                        child: SizedBox(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),

                                child: item["image"],
                              ),

                              const SizedBox(height: 12),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    item["text"] as String,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 50),
                                  Text(
                                    "\$${item["price"]}",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF4A7C59),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              // Product description
                              Text(
                                item["text2"] as String,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFBEFE1),
                          fixedSize: Size(
                            MediaQuery.of(context).size.width * 0.8,
                            30,
                          ),
                        ),
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4A7C59),
                            fontSize: 12,
                          ),
                        ),
                      ),

                      // Product price
                    ],
                  ),
                );
              },
              itemCount: containersList.length,
            ),
          ],
        ),
      ),
    );
  }
}

class Cart {
  static final List<Map<String, dynamic>> items = [];

  static void addItem(Map<String, dynamic> product) {
    items.add(product);
  }

  static void removeItem(int index) {
    items.removeAt(index);
  }

  static int get itemCount => items.length;
}
