import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();
  bool isChecked = false;
  double shippingCost = 12.50;

  @override
  Widget build(BuildContext context) {
    final cartItems = Cart.items;
    final subtotal = Cart.subtotal;
    final total = subtotal + shippingCost;

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
      body: cartItems.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 80,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text("Your cart is empty", style: TextStyle(fontSize: 18)),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text("Continue Shopping"),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  // Order Summary Container
                  Container(
                    margin: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.shopping_bag),
                              SizedBox(width: 8),
                              Text(
                                "Order Summary",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          // Dynamic Cart Items List
                          ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: cartItems.length,
                            separatorBuilder: (_, __) => Divider(height: 20),
                            itemBuilder: (context, index) {
                              final item = cartItems[index];
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      item.imagePath,
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(item.description),
                                        SizedBox(height: 4),
                                        Row(
                                          children: [
                                            Text("Qty: "),
                                            Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey.shade300,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.remove,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        if (item.quantity > 1) {
                                                          item.quantity--;
                                                        } else {
                                                          Cart.removeItem(
                                                            index,
                                                          );
                                                        }
                                                      });
                                                    },
                                                    padding: EdgeInsets.all(4),
                                                    constraints:
                                                        BoxConstraints(),
                                                  ),
                                                  Text(
                                                    item.quantity.toString(),
                                                  ),
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 16,
                                                    ),
                                                    onPressed: () {
                                                      setState(() {
                                                        item.quantity++;
                                                      });
                                                    },
                                                    padding: EdgeInsets.all(4),
                                                    constraints:
                                                        BoxConstraints(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Text(
                                              "\$${(item.price * item.quantity).toStringAsFixed(2)}",
                                              style: TextStyle(
                                                color: Color(0xFF4A7C59),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          SizedBox(height: 20),
                          Divider(),
                          SizedBox(height: 12),
                          // Subtotal, Shipping, Total
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Subtotal"),
                              Text("\$${subtotal.toStringAsFixed(2)}"),
                            ],
                          ),
                          SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Shipping"),
                              Text("\$${shippingCost.toStringAsFixed(2)}"),
                            ],
                          ),
                          SizedBox(height: 12),
                          Divider(),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "\$${total.toStringAsFixed(2)}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xFF4A7C59),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Shipping Details Form
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.local_shipping),
                                SizedBox(width: 10),
                                Text(
                                  "Shipping Details",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Form(
                              key: _formKey,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Full Name"),
                                    SizedBox(height: 8),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffFBEFE1),
                                        border: OutlineInputBorder(),
                                      ),
                                      keyboardType: TextInputType.name,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Name is required';
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
                                    SizedBox(height: 24),
                                    Text("Shipping Address"),
                                    SizedBox(height: 8),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffFBEFE1),
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Address is required';
                                        }
                                        if (value.length < 10) {
                                          return 'Please enter full address';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 24),
                                    Text("Phone Number"),
                                    SizedBox(height: 8),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xffFBEFE1),
                                        border: OutlineInputBorder(),
                                      ),
                                      keyboardType: TextInputType.phone,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Phone number is required';
                                        }
                                        if (value.length < 10) {
                                          return 'Enter 10 digits';
                                        }
                                        if (!RegExp(
                                          r'^[0-9]+$',
                                        ).hasMatch(value)) {
                                          return 'Only numbers allowed';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CheckboxListTile(
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
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Confirm Order Button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Here you can process the order, clear cart, etc.
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Order confirmed! Thank you."),
                          ),
                        );
                        Cart.clear(); // Clear cart after order
                        Navigator.pop(context); // Go back to home
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4A7C59),
                      fixedSize: Size(
                        MediaQuery.of(context).size.width * 0.8,
                        45,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(height: 20),
                ],
              ),
            ),
    );
  }
}

class Cart {
  static final List<CartItem> _items = [];

  static List<CartItem> get items => List.unmodifiable(_items);

  static void addItem(CartItem item) {
    _items.add(item);
  }

  static void removeItem(int index) {
    _items.removeAt(index);
  }

  static double get subtotal {
    return _items.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }

  static void clear() {
    _items.clear();
  }
}

class CartItem {
  final String name;
  final double price;
  final String imagePath;
  final String description;
  int quantity;

  CartItem({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    this.quantity = 1,
  });
}
