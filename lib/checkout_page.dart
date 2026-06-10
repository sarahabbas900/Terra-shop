import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Checkout",
          style: TextStyle(
            color: Color(0xFF4A7C59),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF4A7C59)),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color(0xffFBEFE1),
      ),
      backgroundColor: Color(0xffFBEFE1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: double.infinity,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.shopping_bag),
                        Text("Order Summery"),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: .start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: Image.asset(
                            'assets/images/first.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              "Handcrafted",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Ceramic",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Vase",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("qty:2"),
                          ],
                        ),
                        SizedBox(width: 40),
                        Text(
                          "\$45.0",
                          style: TextStyle(color: Color(0xFF4A7C59)),
                        ),
                      ],
                    ),

                    Divider(),
                    SizedBox(height: 30),
                    Row(
                      crossAxisAlignment: .start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),

                          child: Image.asset(
                            'assets/images/first.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              "Handcrafted",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Ceramic",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Vase",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("qty:2"),
                          ],
                        ),
                        SizedBox(width: 40),
                        Text(
                          "\$45.0",
                          style: TextStyle(color: Color(0xFF4A7C59)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),

                    Divider(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text("Subtotal"),
                            SizedBox(width: 160),
                            Text("\$165.00"),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text("Shipping"),
                            SizedBox(width: 160),
                            Text("\$12.50"),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 160),
                            Text(
                              "\$177.50",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF4A7C59),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.local_shipping),
                          SizedBox(width: 10),

                          Text("Shipping Details"),
                        ],
                      ),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: .start,
                            children: [
                              Text("Full Name"),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFBEFE1),
                                  border: OutlineInputBorder(),
                                ),

                                keyboardType: TextInputType.name,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Name  is requrired  ';
                                  }
                                  if (value.length < 3) {
                                    return 'At least 3 characters';
                                  }
                                  if (!RegExp(
                                    r'^[a-zA-Z\s]+$',
                                  ).hasMatch(value)) {
                                    return 'Only letters and spaces';
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: 40),
                              Text("Shipping Address"),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFBEFE1),
                                  border: OutlineInputBorder(),
                                ),

                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Address is requrired  ';
                                  }
                                  if (value.length < 10) {
                                    return 'Please enter full address';
                                  }

                                  return null;
                                },
                              ),
                              SizedBox(height: 40),
                              Text("Phone Number"),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xffFBEFE1),
                                  border: OutlineInputBorder(),
                                ),
                                keyboardType: TextInputType.phone,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Phone number  is requrired  ';
                                  }
                                  if (value.length < 10) {
                                    return 'Enter 10 digits';
                                  }
                                  if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                                    return 'Only numbers allowed';
                                  }

                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                          value: isChecked,
                          title: Text(
                            "Save this address for future orders",
                            style: TextStyle(fontSize: 14),
                          ),
                          controlAffinity: ListTileControlAffinity.leading,

                          onChanged: (bool? val) {
                            setState(() {
                              isChecked = val!;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState?.validate() ?? false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("The Order is confirmed")),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4A7C59),
                fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 30),
              ),
              child: Row(
                mainAxisAlignment: .center,
                children: [
                  Text(
                    "Confirm order",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
