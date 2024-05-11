import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:naapbook/Appbar_slivercontroller/carouselList_class.dart';

class MyAppBarController extends StatefulWidget {
  const MyAppBarController({super.key});

  @override
  State<MyAppBarController> createState() => _MyAppBarControllerState();
}

class _MyAppBarControllerState extends State<MyAppBarController> {
 var common = myCommon();


  late ScrollController _scrollController;

 // List myCarouselList  = [];
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    common.addData();
    print(myCommon.carouselList.length);
    _scrollController = ScrollController(initialScrollOffset: 280.0);
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          // SliverAppBar
          SliverAppBar(
            expandedHeight: 270.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(

              title: mySearchbar(),
              titlePadding: EdgeInsets.zero,
              background: Column(
                children: [
                  myAppBar(),
                  // myBanner(),
                  myCarasolWidget()
                ],
              ),
            ),
          ),
          // SliverList
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                    myContain(),
                  ],
                );
              },
              childCount: 1, // Number of list items
            ),
          ),
        ],
      ),
    );
  }

  myAppBar() {
    return AppBar(
      title: Text('CustomScrollController'),
      centerTitle: true,
      leading: Icon(Icons.home),
      actions: [
        Icon(Icons.search),
      ],
      backgroundColor: Colors.blue,
    );
  }

  myContain() {
    return Container(
      height: 100,
      // width: 50,
      color: Colors.red,
      margin: EdgeInsets.only(bottom: 10),
    );
  }

  mySearchbar() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search here...',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }

  myBanner() {
    return Container(
      height: 100,
      width: double.maxFinite,
      child: CachedNetworkImage(
        imageUrl:
            "https://cdn.shopify.com/app-store/listing_images/6904749e8e0a959eb93c329067f76ed5/promotional_image/CKHQgYrFi4ADEAE=.png?height=720&width=1280",
        fit: BoxFit.cover,
        placeholder: (context, url) =>
            Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }

  myCarasolWidget(){
    return CarouselSlider(

      options: CarouselOptions(autoPlay: true,height: 120,animateToClosest: true,pageSnapping: true,padEnds: true,),
      items: myCommon.carouselList.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: 120,
              width: screenWidth,
              child: CachedNetworkImage(
                imageUrl: i.toString(),fit: BoxFit.cover,
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
