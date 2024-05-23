import 'package:car_flutter/manage/user/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../models/product_model.dart';

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
      body: Stack(
        children: [
          Positioned(
            top: 0.0,
            right: 0.0,
            left: 0.0,
            child: Image.asset(
              widget.user.background ?? '',
              width: double.infinity,
              fit: BoxFit.cover,
              height: 168.0,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top + 10.0,
            left: 22.0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  'assets/icons/ic_back.svg',
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 148,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: GridView.builder(
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
                            color: Colors.black,
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
