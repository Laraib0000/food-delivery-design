import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:foodpanda/Screens/DetailsScreen.dart';
import 'package:foodpanda/constants/color.dart';
import 'package:foodpanda/constants/constants.dart';
import 'package:foodpanda/main.dart';

class RestaurantScreen extends StatefulWidget {
  String name,
      deliveryPrice,
      remaingTime,
      image,
      ratting,
      subTitle,
      totalRating;
  RestaurantScreen(
      {Key? key,
      required this.name,
      required this.deliveryPrice,
      required this.image,
      required this.ratting,
      required this.subTitle,
      required this.remaingTime,
      required this.totalRating})
      : super(key: key);

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Padding(
      padding: const EdgeInsets.only(
        right: 10,
        top: 13,
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      DetailsScreen(name: widget.name, image: widget.image)));
        },
        child: Container(
          height: height * .3,
          width: width * .6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image(
                          fit: BoxFit.cover,
                          height: height * .2,
                          image: AssetImage(widget.image))),
                  Positioned(
                    left: 0,
                    top: 10,
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0)),
                          color: MyColors.navy),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            'Flat 20% off',
                            style: TextStyle(color: MyColors.whiteC),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      height: 40,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: MyColors.whiteC),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Text(
                            '30 mins',
                            style: TextStyle(color: MyColors.blackC),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: TextStyle(fontFamily: Bold),
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemSize: 18,
                          itemCount: 1,
                          unratedColor: Colors.amber,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          widget.ratting.toString(),
                          style: TextStyle(fontFamily: Bold),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          ("(" + widget.totalRating + ")"),
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text('\$. '),
                  Text(widget.subTitle),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.directions_bike,
                    color: MyColors.primaryColor,
                  ),
                  Text('  Rs ' + widget.deliveryPrice),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
