import 'package:flutter/material.dart';

class ApplyCoupon extends StatelessWidget {
  const ApplyCoupon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                  height: 50.0,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  decoration: const BoxDecoration(
                    color: Color(0x77CDD2D3),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(
                          null,
                          color: Colors.black,
                        ),
                        hintText: "Apply coupon",
                        border: InputBorder.none),
                  )),
            ),
            const SizedBox(
              height: 16.0,
            ),
          ],
        )
      ],
    );
  }
}
