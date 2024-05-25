import 'package:car_flutter/common/components/app_colors/app_color.dart';
import 'package:car_flutter/manage/user/models/product_model.dart';
import 'package:car_flutter/manage/user/models/user_model.dart';
import 'package:car_flutter/manage/user/pages/cart/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({
    super.key,
    required this.user,
    required this.productModel,
  });
  final UserModel user;
  final ProductModel productModel;

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
          Positioned(
            top: MediaQuery.of(context).padding.top + 10.0,
            right: 22.0,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CartPage()));
              },
              child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.shopping_cart)),
            ),
          ),
          Positioned.fill(
            top: 168,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColor.primary,
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
                          width: MediaQuery.of(context).size.width,
                          height: 220,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    AppColor.gradientFirst.withOpacity(0.8),
                                    AppColor.gradientSecond.withOpacity(0.9)
                                  ],
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.centerRight),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                  topRight: Radius.circular(80)),
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(5, 10),
                                    blurRadius: 20,
                                    color: AppColor.gradientSecond
                                        .withOpacity(0.2))
                              ]),
                          child: Container(
                            padding: const EdgeInsets.only(
                                left: 20, top: 25, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Next workout",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.homePageContainerTextSmall,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Legs Toning",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColor.homePageContainerTextSmall,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "and Glutes Workout",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: AppColor.homePageContainerTextSmall,
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.timer,
                                          size: 20,
                                          color: AppColor
                                              .homePageContainerTextSmall,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "60min",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: AppColor
                                                .homePageContainerTextSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          boxShadow: [
                                            BoxShadow(
                                                color: AppColor.gradientFirst,
                                                blurRadius: 10,
                                                offset: const Offset(4, 8))
                                          ]),
                                      child: const Icon(
                                        Icons.play_circle_fill,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
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
                          return Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(
                                          2, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(children: [
                                  Container(
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Positioned(
                                            top: 0.0,
                                            right: 0.0,
                                            left: 0.0,
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topRight: Radius.circular(20),
                                                bottomLeft: Radius.circular(10),
                                              ),
                                              child: Image.asset(
                                                widget.user.background ?? '',
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                                height: 120.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 5.0),
                                        Text(
                                          'flavor',
                                          style: TextStyle(
                                              color: Colors.teal.shade100,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          'Ganache',
                                          style: TextStyle(
                                              color: Colors.grey[600],
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  Positioned(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const CartPage()));
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15.0),
                                            child: Icon(
                                              Icons.shopping_cart,
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(12),
                                          decoration: BoxDecoration(
                                            color: Colors.teal.shade300,
                                            borderRadius:
                                                const BorderRadius.only(
                                              topRight: Radius.circular(12),
                                              bottomLeft: Radius.circular(12),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.8),
                                                spreadRadius: 0,
                                                blurRadius: 3,
                                                offset: const Offset(0,
                                                    2), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: const Text(
                                            '',
                                            style: TextStyle(
                                                color: Colors.teal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ]),
                              ),
                            ],
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
    );
  }
}
