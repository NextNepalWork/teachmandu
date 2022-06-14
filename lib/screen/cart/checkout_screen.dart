import 'package:e_learning/constant/my_color.dart';
import 'package:e_learning/provider/cart_provider.dart';
import 'package:e_learning/widgets/apply_promocode.dart';

import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = context.watch<CartProvider>().cart;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              'Checkout',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              child: Column(
                children: const [],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  margin: const EdgeInsets.only(top: 455),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ApplyCoupon(),
                        const CustomRow(
                          text: "Subtotal",
                          price: 0.0,
                        ),
                        const CustomRow(
                          text: "Estimated Shipping",
                          price: 0.0,
                        ),
                        const CustomRow(
                          text: "Tax",
                          price: 0.0,
                        ),
                        const CustomRow(
                          text: "Discount",
                          price: 0.0,
                        ),
                        CustomRow(
                            text: "Total price",
                            price: context.watch<CartProvider>().totalAmount,
                            color1: MyColor.primaryColor),
                        const SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          height: 55,
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: MyColor.primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              onPressed: () {},
                              child: const Text(
                                'Checkout',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final String? text;
  final double? price;
  final Color? color1;
  const CustomRow({
    Key? key,
    this.text,
    this.price,
    this.color1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text!,
          style: const TextStyle(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        Text(
          "Rs. " + price.toString(),
          style: TextStyle(
              fontSize: 16,
              color: color1 == null ? Colors.black : color1,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
