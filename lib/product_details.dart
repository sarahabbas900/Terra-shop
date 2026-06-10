import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String? selectedColor;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 275,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset("assets/images/first.jpg", fit: BoxFit.cover),
            ),
          ),

          Positioned(
            top: 25,
            left: 20,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Color(0xffFBEFE1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 16),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),

          Positioned(
            top: 220,
            right: 20,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Color(0xffFBEFE1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(Icons.favorite_outline, size: 18),
            ),
          ),

          Positioned(
            top: 260,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFBEFE1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Text("ARTISAN COLLECTION "),
                              SizedBox(width: 120),
                              Column(
                                children: [
                                  Text(
                                    "68\$",
                                    style: TextStyle(
                                      color: Color(0xFF4A7C59),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "in Stock",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            "HandCrafted \nCeramic vase ",
                            style: TextStyle(
                              // color: Color(0xFF4A7C59),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Divider(),
                          Row(
                            children: [
                              Icon(Icons.info_outline),
                              SizedBox(width: 10),
                              Text(
                                "Product Description",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Thrown on a traditional potter's wheel, this vase embodies the perfect balance between rustic charm and modern elegance. Made from locally sourced, high-fire stoneware clay, it features a unique matte glaze that highlights the natural texture of the earth.\n\nPerfect for fresh blooms or as a standalone sculptural piece. Due to its handmade nature, each piece exhibits slight variations in color and form, making yours entirely unique.",
                            style: TextStyle(
                              fontSize: 14,
                              height: 1.5,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          SizedBox(height: 24),

                          // Dimensions and Watertight
                          Row(
                            children: [
                              Text(
                                '8" H x 5" W',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey.shade800,
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFFBFE1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.water_drop_outlined, size: 15),
                                    Text(
                                      'Watertight',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 24),
                          Row(
                            children: [
                              Icon(
                                Icons.palette_outlined,
                                color: Color(0xffC5A76B),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Select Color",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xff594311),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          width: 2,
                                          strokeAlign:
                                              BorderSide.strokeAlignOutside,
                                          color: Color(0xFF4A7C59),
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                  ),

                                  Text("Earth"),
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xff50825E),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),

                                  Text("Moss"),
                                ],
                              ),
                              SizedBox(width: 15),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffD0C5B8),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  Text("Sand"),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 50),
                          Divider(),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFDEA0),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Row(
                                  mainAxisAlignment: .center,
                                  children: [
                                    InkWell(
                                      onTap: () => setState(() {
                                        if (quantity > 1) {
                                          quantity--;
                                        }
                                      }),
                                      child: Icon(Icons.remove, size: 25),
                                    ),

                                    SizedBox(width: 18),
                                    Text(
                                      "$quantity",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(width: 18),

                                    InkWell(
                                      onTap: () => setState(() {
                                        quantity++;
                                      }),
                                      child: Icon(Icons.add, size: 25),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(width: 59),
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF4A7C59),
                                  fixedSize: Size(
                                    MediaQuery.of(context).size.width * 0.4,
                                    30,
                                  ),
                                ),
                                child: Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
