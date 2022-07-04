import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/Models/exclusiveHelper.dart';
import 'package:foodpanda/Models/exclusive_item_model.dart';
import 'package:foodpanda/constants/color.dart';

import '../Component/RestaurantScreen.dart';
import '../Models/pandaPickHelper.dart';
import '../Models/pandaPickItemModel.dart';
import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'New York City',
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoTextField(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xfff7f7f7),
                          borderRadius: BorderRadius.circular(20.0)),
                      prefix: const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Color(0xff7b7b7b),
                        ),
                      ),
                      placeholder: 'Search for shop & restaurants',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Icon(
                      Icons.filter_list_outlined,
                      color: MyColors.primaryColor,
                    ),
                  )
                ],
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'PandaPick',
                style: TextStyle(fontFamily: Bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                height: height * 0.31,
                // color: MyColors.secondaryTextColor,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: PandaPickHelper.statusList.length,
                  itemBuilder: (BuildContext context, int index) {
                    PandaPickItemModel model =
                        PandaPickHelper.getStatusItem(index);
                    return RestaurantScreen(
                      deliveryPrice: model.deliveryPrice.toString(),
                      image: model.image.toString(),
                      name: model.name.toString(),
                      ratting: model.ratting.toString(),
                      remaingTime: model.remaingTime.toString(),
                      subTitle: model.subTitle.toString(),
                      totalRating: model.totalRating.toString(),
                    );
                  },
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Panda Exclusive',
                style: TextStyle(fontFamily: Bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                height: height * 0.31,
                // color: MyColors.secondaryTextColor,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ExclusiveHelper.itemCount,
                  itemBuilder: (BuildContext context, int index) {
                    // PandaPickItemModel model =
                    //     PandaPickHelper.getStatusItem(index);
                    ExclusiveItemModel model =
                        ExclusiveHelper.getStatusItem(index);
                    return RestaurantScreen(
                      deliveryPrice: model.deliveryPrice.toString(),
                      image: model.image.toString(),
                      name: model.name.toString(),
                      ratting: model.totalRating.toString(),
                      remaingTime: model.remaingTime.toString(),
                      subTitle: model.subTitle.toString(),
                      totalRating: model.totalRating.toString(),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'All Restaurants',
                style: TextStyle(fontFamily: Bold, fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                height: height * 0.31,
                // color: MyColors.secondaryTextColor,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: PandaPickHelper.statusList.length,
                  itemBuilder: (BuildContext context, int index) {
                    PandaPickItemModel model =
                        PandaPickHelper.getStatusItem(index);
                    return RestaurantScreen(
                      deliveryPrice: model.deliveryPrice.toString(),
                      image: model.image.toString(),
                      name: model.name.toString(),
                      ratting: model.ratting.toString(),
                      remaingTime: model.remaingTime.toString(),
                      subTitle: model.subTitle.toString(),
                      totalRating: model.totalRating.toString(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
