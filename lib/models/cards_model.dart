import 'package:flutter/material.dart';
import 'package:decor_app/constants/constants.dart';

class CustomCard extends StatelessWidget {
  final CardModel cardModel;
  CustomCard({required this.cardModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.cardModel.onCardClick != null) {
          this.cardModel.onCardClick!();
        }
      },
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: this.cardModel.bkg,
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.2), BlendMode.srcOver)),
            border: Border.all(width: 0, color: Colors.white),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset('lib/assets/icons/icon-02.png',
                    width: 40, height: 40),
              ),
              Align(
                alignment: Alignment(-0.75, 0.65),
                child: Text("${this.cardModel.title}",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: kPrimaryColor.withOpacity(1),
                        fontSize: 40),
                    textScaleFactor: 0.35),
              ),
              Align(
                  alignment: Alignment(-0.9, 0.77),
                  child: Text("${this.cardModel.subtitle}",
                      style: txtStyleHeavy, textScaleFactor: 0.25)),
              Align(
                alignment: Alignment(-0.4, 0.8),
                child: Text("\$${this.cardModel.price}.-",
                    style: txtStyleHeavy, textScaleFactor: 0.4),
              )
            ],
          ),
        ),
      ),
    );
  }
}
