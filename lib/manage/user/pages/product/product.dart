import 'package:car_flutter/manage/user/models/user_model.dart';
import 'package:car_flutter/manage/user/pages/cart/cart.dart';
import 'package:flutter/material.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Stack(
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
            Positioned(
              top: MediaQuery.of(context).padding.top + 10.0,
              right: 22.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartPage()));
                },
                child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.card_giftcard)),
              ),
            ),
            Positioned.fill(
              top: 168,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0)
                        .copyWith(top: MediaQuery.of(context).padding.top),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 180.0,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(60.0),
                                    topLeft: Radius.circular(10.0),
                                    bottomLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0)),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(offset: Offset(0.3, 0.3))
                                ]),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0)
                                      .copyWith(
                                          top: MediaQuery.of(context)
                                              .padding
                                              .top),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Column(
                                        children: [
                                          Text(
                                            'data',
                                            style: TextStyle(fontSize: 30.0),
                                          ),
                                          Text(
                                            'data',
                                            style: TextStyle(fontSize: 30.0),
                                          )
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 130,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.yellow, width: 3.0),
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                        ),
                                        child: const Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  '24/7',
                                                  style:
                                                      TextStyle(fontSize: 30.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Product',
                            style: TextStyle(fontSize: 20.0),
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
                            mainAxisExtent: 240,
                          ),
                          itemBuilder: (_, index) {
                            final productItem = product[index];
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black12),
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(
                                          5.0,
                                          3.0,
                                        ),
                                        color:
                                            Color.fromARGB(31, 187, 186, 186))
                                  ]),
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
                                  Text(productItem.title ?? ''),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('10.0 '),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: product.length,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
