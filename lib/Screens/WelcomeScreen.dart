import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda/Component/RestaurantScreen.dart';
import 'package:foodpanda/Models/pandaPickHelper.dart';
import 'package:foodpanda/Models/pandaPickItemModel.dart';
import 'package:foodpanda/Screens/HomeScreen.dart';
import 'package:foodpanda/constants/color.dart';
import 'package:foodpanda/constants/constants.dart';

class WelcomeScreen extends StatefulWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
                ],
              ),
            )),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: MyColors.primaryColor),
              child: Container(
                height: height / 5,
                child: const CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage('assets/laraib.JPG'),
                ),
              ),
            ),
            Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Settings',
                    style: TextStyle(fontFamily: Medium, color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.help_outline),
                  title: Text(
                    'Help Center',
                    style: TextStyle(fontFamily: Medium, color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.more_horiz),
                  title: Text(
                    'More',
                    style: TextStyle(fontFamily: Medium, color: Colors.black),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.login_outlined),
                  title: Text(
                    'Sign up or login',
                    style: TextStyle(fontFamily: Medium, color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: height / 4.8,
                    decoration: BoxDecoration(
                        color: MyColors.primaryColor,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Stack(
                      children: [
                        const Image(
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/12/26/17/28/spaghetti-1932466__480.jpg')),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                'Food Delivery',
                                style: TextStyle(
                                    fontFamily: Bold, color: Colors.white),
                              ),
                              Text(
                                'Order from your favorite\n restaurant and home chefs',
                                style: TextStyle(
                                    color: MyColors.whiteC,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: height / 3.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xfffed271),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 75,
                              backgroundImage:
                                  AssetImage('assets/pandamart.jpg'),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 15,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Pandamart',
                                    style: TextStyle(fontFamily: Bold),
                                  ),
                                  Text('panda 20 for 20% off')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: height * 0.17,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xfffef9fc4),
                              ),
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: double.infinity,
                                      image: AssetImage('assets/food.jpg')),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pick up',
                                        style: TextStyle(fontFamily: Bold),
                                      ),
                                      Text('up to 50% off'),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: height * 0.1,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color(0xfffef9fc4),
                                ),
                                child: Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image(
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2016/11/29/07/45/desserts-1868181__340.jpg')),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Shops',
                                          style: TextStyle(
                                              fontFamily: Bold,
                                              color: MyColors.whiteC),
                                        ),
                                        Text('Everyday essentials',
                                            style: TextStyle(
                                                color: MyColors.whiteC)),
                                      ],
                                    ),
                                  )
                                ])),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Your Daily Deals',
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
