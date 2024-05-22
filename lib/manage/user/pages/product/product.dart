import 'package:car_flutter/manage/user/models/product_model.dart';
import 'package:car_flutter/manage/user/models/user_model.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key, required this.user});
  final UserModel user;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF8F9FA),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const CircleAvatar(
                  child: Icon(Icons.abc),
                ),
                Image.asset(
                  height: 168.0,
                  widget.user.background ?? '',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              color: Colors.white),
                          height: 100.0,
                          width: double.infinity,
                          child: const Text('Hello'),
                        ),
                      ),
                      GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20.0,
                          mainAxisSpacing: 20.0,
                          mainAxisExtent: 220,
                        ),
                        itemBuilder: (_, index) {
                          final productItem = product[index];
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                16.0,
                              ),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      productItem.image ?? '',
                                      height: 150,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(productItem.title ?? '')
                              ],
                            ),
                          );
                        },
                        itemCount: product.length,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
