import 'package:flutter/material.dart';
import 'package:rps_ui_e2/utils/constants.dart';
import 'package:rps_ui_e2/utils/widget_functions.dart';

class ProductItem extends StatelessWidget {
  final double width;
  final dynamic productData;

  const ProductItem({Key? key, required this.width,required this.productData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final height = width * 4 / 3;
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: width,
      height: height + 40,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(flex: 2, child: Container()),
              Expanded(
                flex: 7,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image.asset(
                  "assets/images/${productData['image']}",
                  width: width * 0.80,
                )),
                Expanded(child: Center()),
                Text(
                  "${productData['name']}",
                  style: textTheme.headline6,
                ),
                addVerticalSpace(5),
                RichText(
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(children: [
                      WidgetSpan(child: Icon(Icons.location_on, color: Colors.red, size: 15)),
                      TextSpan(text: "${productData['rest']}", style: textTheme.caption)
                    ])),
                addVerticalSpace(15),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: RichText(
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(children: [
                            WidgetSpan(child: Icon(Icons.star, color: Colors.orange, size: 15)),
                            TextSpan(text: "${productData['rating']}", style: textTheme.subtitle2!.apply(fontWeightDelta: 4))
                          ])),
                    ),
                    Expanded(
                      flex: 5,
                      child: RichText(
                          textAlign: TextAlign.right,
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(children: [
                            TextSpan(text: "\$", style: TextStyle(color: COLOR_ORANGE)),
                            TextSpan(text: "${productData['price']}", style: textTheme.headline5!.apply(color: COLOR_ORANGE))
                          ])),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
