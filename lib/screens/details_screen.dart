import 'package:flutter/material.dart';
import 'package:decor_app/constants/constants.dart';
import 'package:decor_app/components/colors_pallete.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String title;
  final String subtitle;
  final String price;
  final ImageProvider img;

  ProductDetailsScreen(this.title, this.subtitle, this.price, this.img);
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        CustomScrollView(
          controller: _scrollController,
          slivers: <Widget>[
            SliverAppBar(
              iconTheme: IconThemeData(color: kPrimaryColor.withOpacity(1)),
              expandedHeight: ScreenSize(context).height / 1.7,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image(image: widget.img, fit: BoxFit.cover)),
            ),
            SliverFillRemaining(
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 15),
                    child: Text(widget.title,
                        style: TextStyle(
                            color: kPrimaryColor.withOpacity(1), fontSize: 40)),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 52, left: 18),
                    child: Text(
                        widget.title.substring(0, widget.title.length - 1),
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 72, left: 22),
                      child: Text(
                          "\$".toString() + widget.price + ".-".toString(),
                          style: TextStyle(
                              color: kSecondaryColor.withOpacity(1),
                              fontSize: 35,
                              fontWeight: FontWeight.bold))),
                  Container(
                      padding: EdgeInsets.only(top: 120, left: 18, right: 18),
                      child: Text(rndmText,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ))),
                  Container(
                    padding: EdgeInsets.only(top: 260, left: 18),
                    child: Column(
                      children: [
                        Row(children: [
                          SizedBox(width: 5),
                          Text("Quantity",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                          SizedBox(width: 117),
                          Text("Colors",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16)),
                        ]),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: incDec,
                                child: Text("+",
                                    style: TextStyle(
                                        color: kPrimaryColor.withOpacity(1))),
                              ),
                            ),
                            SizedBox(width: 5),
                            Text("01",
                                style: TextStyle(
                                    color: kPrimaryColor.withOpacity(1),
                                    fontSize: 16)),
                            SizedBox(width: 5),
                            Container(
                              height: 25,
                              width: 25,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: incDec,
                                child: Text("-",
                                    style: TextStyle(
                                        color: kPrimaryColor.withOpacity(1))),
                              ),
                            ),
                            SizedBox(width: 110),
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    // mainAxisAlignment:
                                    //     MainAxisAlignment.spaceAround,
                                    children: [
                                      ColorPalette(
                                          colorCircle:
                                              ColorCircle(clr: Colors.white)),
                                      SizedBox(width: 4),
                                      ColorPalette(
                                          colorCircle: ColorCircle(
                                              clr: Colors.pink[200])),
                                      SizedBox(width: 4),
                                      ColorPalette(
                                          colorCircle: ColorCircle(
                                              clr: Colors.greenAccent[400])),
                                      SizedBox(width: 4),
                                      ColorPalette(
                                          colorCircle: ColorCircle(
                                              clr: Colors.lightBlue)),
                                      SizedBox(width: 4),
                                      ColorPalette(
                                          colorCircle:
                                              ColorCircle(clr: Colors.black))
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        cartButton(),
      ],
    ));
  }

  late ScrollController _scrollController;
  double top = 256.0 - 4.0;
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget cartButton() {
    final double sliverBarH = ScreenSize(context).height / 1.86;
    final double whereToShrink = ScreenSize(context).height / 2.2;
    final double whereToDisappear = whereToShrink / 2;

    double top = sliverBarH;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < sliverBarH - whereToShrink) {
        //offset small => don't scale down
        scale = 1.0;
      } else if (offset < sliverBarH - whereToDisappear) {
        //offset between shrinkStart and ShrinkEnd => scale down
        scale = (sliverBarH - whereToDisappear - offset) / whereToDisappear;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }

    return Positioned(
        top: top,
        right: 16.0,
        child: Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()..scale(scale),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0, 4),
                            blurRadius: 5.0)
                      ],
                      color: kSecondaryColor.withOpacity(1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all(Size(70, 70)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {},
                      child: Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            bottom: 10,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            size: 40,
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
