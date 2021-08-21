import 'package:decor_app/constants/constants.dart';
import 'package:decor_app/components/card_data.dart';
import 'package:decor_app/screens/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:decor_app/components/categories_data.dart';
import 'package:decor_app/models/cards_model.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('lib/assets/icons/icon-04.png', width: 30, height: 30),
            SizedBox(width: ScreenSize(context).width * 0.22),
            Text("Categories",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: kPrimaryColor.withOpacity(1),
                    fontWeight: FontWeight.w300)),
            Image.asset('lib/assets/icons/icon-05.png', width: 22, height: 22)
          ],
        ),
      ),
      body: Container(
        height: ScreenSize(context).height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              bottom: ScreenSize(context).height * 0.05,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Scan my space"),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: ConstrainedBox(
                    constraints: new BoxConstraints(maxHeight: 35.0),
                    child: catgList)),
            Positioned(
              height: 600,
              width: 370,
              top: ScreenSize(context).height * 0.06,
              left: ScreenSize(context).width * 0.007,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (0.6),
                padding: EdgeInsets.all(10),
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                children: List.generate(
                  cardData.length,
                  (id) => CustomCard(
                    cardModel: new CardModel(
                      id: cardData[id].id,
                      title: cardData[id].title,
                      subtitle: cardData[id].subtitle,
                      price: cardData[id].price,
                      bkg: cardData[id].bkg,
                      onCardClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(
                                  cardData[id].title,
                                  cardData[id].subtitle,
                                  cardData[id].price,
                                  cardData[id].bkg)),
                        );
                      },
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
