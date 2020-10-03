import 'package:flutter/material.dart';
import 'package:rps_ui_e1/custom/BorderIcon.dart';
import 'package:rps_ui_e1/custom/OptionButton.dart';
import 'package:rps_ui_e1/sample_data.dart';
import 'package:rps_ui_e1/screens/DetailPage.dart';
import 'package:rps_ui_e1/utils/constants.dart';
import 'package:rps_ui_e1/utils/custom_functions.dart';
import 'package:rps_ui_e1/utils/widget_functions.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 25;
    final sidePadding = EdgeInsets.symmetric(horizontal: padding);
    return SafeArea(
      child: Scaffold(
          body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addVerticalSpace(padding),
                Padding(
                  padding: sidePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderIcon(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.menu,
                          color: COLOR_BLACK,
                        ),
                      ),
                      BorderIcon(
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.settings,
                          color: COLOR_BLACK,
                        ),
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(20),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "City",
                    style: themeData.textTheme.bodyText2,
                  ),
                ),
                addVerticalSpace(10),
                Padding(
                  padding: sidePadding,
                  child: Text(
                    "San Francisco",
                    style: themeData.textTheme.headline1,
                  ),
                ),
                Padding(
                    padding: sidePadding,
                    child: Divider(
                      height: 25,
                      color: COLOR_GREY,
                    )),
                addVerticalSpace(10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: ["<\$220,000","For Sale","3-4 Beds",">1000 sqft"]
                        .map((filter) => ChoiceOption(text: filter)).toList(),
                  ),
                ),
                addVerticalSpace(10),
                Expanded(
                  child: Padding(
                    padding: sidePadding,
                    child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: RE_DATA.length,
                        itemBuilder: (context, index) {
                          return RealEstateItem(
                            itemData: RE_DATA[index],
                          );
                        }),
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              width: size.width,
              child: Center(
                child: OptionButton(
                  text: "Map View",
                  icon: Icons.map_rounded,
                  width: size.width * 0.35,
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class ChoiceOption extends StatelessWidget {
  final String text;

  const ChoiceOption({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: COLOR_GREY.withAlpha(25),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
      margin: const EdgeInsets.only(left: 20),
      child: Text(
        text,
        style: themeData.textTheme.headline5,
      ),
    );
  }
}

class RealEstateItem extends StatelessWidget {
  final dynamic itemData;

  const RealEstateItem({Key key, this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailPage(
                  itemData: itemData,
                )));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(25.0), child: Image.asset(itemData["image"])),
                Positioned(
                    top: 15,
                    right: 15,
                    child: BorderIcon(
                        child: Icon(
                      Icons.favorite_border,
                      color: COLOR_BLACK,
                    )))
              ],
            ),
            addVerticalSpace(15),
            Row(
              children: [
                Text(
                  "${formatCurrency(itemData["amount"])}",
                  style: themeData.textTheme.headline1,
                ),
                addHorizontalSpace(10),
                Text(
                  "${itemData["address"]}",
                  style: themeData.textTheme.bodyText2,
                )
              ],
            ),
            addVerticalSpace(10),
            Text(
              "${itemData["bedrooms"]} bedrooms / ${itemData["bathrooms"]} bathrooms / ${itemData["area"]} sqft",
              style: themeData.textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}
