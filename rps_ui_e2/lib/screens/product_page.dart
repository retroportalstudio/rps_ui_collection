import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rps_ui_e2/utils/button.dart';
import 'package:rps_ui_e2/utils/constants.dart';
import 'package:rps_ui_e2/utils/widget_functions.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ProductPage extends StatefulWidget {
  final Map<String, dynamic> productData;

  const ProductPage({Key? key, required this.productData}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final GlobalKey<SlideActionState> _buttonKey = GlobalKey<SlideActionState>();
  bool addedToCart = false; // Just for Demonstration

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return Container(
            height: constraints.maxHeight,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          height: constraints.maxHeight * 0.40,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xffE2F3D4),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/${widget.productData['image']}",
                                    width: constraints.maxWidth * 0.50,
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 10,
                                  left: 10,
                                  child: SquareIconButton(
                                    icon: Icons.arrow_back_ios_outlined,
                                    width: 50,
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    buttonColor: Colors.orange.shade100,
                                    iconColor: Colors.orange,
                                  ))
                            ],
                          ),
                        ),
                        addVerticalSpace(10),
                        Container(
                          color: Colors.grey.shade50,
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    addVerticalSpace(20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${widget.productData['name']}",
                                              style: textTheme.headline5,
                                            ),
                                            addVerticalSpace(5),
                                            RichText(
                                                overflow: TextOverflow.ellipsis,
                                                text: TextSpan(children: [
                                                  WidgetSpan(child: Icon(Icons.location_on, color: Colors.red, size: 15)),
                                                  TextSpan(text: "${widget.productData['rest']}", style: textTheme.subtitle2!.apply(color: COLOR_GREY))
                                                ])),
                                          ],
                                        ),
                                        RichText(
                                            textAlign: TextAlign.right,
                                            overflow: TextOverflow.ellipsis,
                                            text: TextSpan(children: [
                                              TextSpan(text: "\$", style: TextStyle(color: COLOR_ORANGE)),
                                              TextSpan(text: "${widget.productData['price']}", style: textTheme.headline5!.apply(color: COLOR_ORANGE))
                                            ])),
                                      ],
                                    ),
                                    addVerticalSpace(20),
                                    Divider(),
                                    Container(
                                      margin: const EdgeInsets.symmetric(vertical: 20.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          RichText(
                                              overflow: TextOverflow.ellipsis,
                                              text: TextSpan(children: [
                                                WidgetSpan(child: Icon(Icons.star, color: Colors.orange, size: 15)),
                                                TextSpan(text: "${widget.productData['rating']}", style: textTheme.bodyText2!.apply(fontWeightDelta: 4))
                                              ])),
                                          RichText(
                                              overflow: TextOverflow.ellipsis,
                                              text: TextSpan(children: [
                                                WidgetSpan(child: Icon(Icons.access_time_sharp, color: Colors.red, size: 15)),
                                                TextSpan(text: " 18 Mins", style: textTheme.bodyText2!.apply(fontWeightDelta: 4))
                                              ])),
                                          RichText(
                                              overflow: TextOverflow.ellipsis,
                                              text: TextSpan(children: [
                                                WidgetSpan(child: Icon(Icons.location_on, color: Colors.green, size: 15)),
                                                TextSpan(text: "2.3 KM" , style: textTheme.bodyText2!.apply(fontWeightDelta: 4))
                                              ])),
                                        ],
                                      ),
                                    ),
                                    Divider(),
                                    Text(
                                      "Overview",
                                      style: textTheme.headline6,
                                    ),
                                    addVerticalSpace(10),
                                    Text(
                                      "A pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions, crisp capsicum, succulent mushrooms, juicyfresh tomatoes and jalapeno - with extra cheese to go all around. A pizza that goes ballistic on veggies! Check out this mouth watering overload of crunchy, crisp capsicum, succulent mushrooms and fresh tomatoes",
                                      style: textTheme.subtitle2!.apply(heightDelta: 2.0),
                                    ),
                                    addVerticalSpace(100),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -35,
                                right: 20,
                                child: InkWell(
                                  onTap: () {
                                    Fluttertoast.showToast(msg: "Added to Favorite");
                                  },
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle, color: Colors.red, boxShadow: [BoxShadow(color: Colors.red.withOpacity(0.2), blurRadius: 10.0, spreadRadius: 5.0)]),
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 35.0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (!addedToCart) ...[
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: constraints.maxWidth,
                      height: constraints.maxHeight * 0.12,
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)), color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: SlideAction(
                          text: "Add to Cart",
                          key: _buttonKey,
                          sliderButtonIcon: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                          onSubmit: () {
                            Future.delayed(Duration(seconds: 1), () {
                              setState(() {
                                addedToCart = true;
                              });
                              // _buttonKey.currentState!.reset();
                            });
                          },
                          sliderRotate: false,
                          borderRadius: 10.0,
                          elevation: 0,
                          innerColor: COLOR_GREEN,
                          outerColor: Colors.grey.shade100,
                        ),
                      ),
                    ),
                  )
                ]
              ],
            ),
          );
        }),
      ),
    );
  }
}
