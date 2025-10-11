import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecomandedConbo extends StatelessWidget {
  String image;
  VoidCallback ontab;
   RecomandedConbo({super.key,required this.image,required this.ontab});


  @override
  Widget build(BuildContext context) {
    double sceenwith = MediaQuery.of(context).size.width;
    double sceenhight = MediaQuery.of(context).size.width;
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(10),
      width: sceenwith / 2.5,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
              InkWell(
                  onTap: ontab
                  ,child: Icon(Icons.favorite)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                    image
                ),
                height: sceenhight / 6.5,
              ),
            ],
          ),
          Text(
            "Brandon Grotesque",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$2,000"),
              Icon(Icons.add)
            ],
          )
        ],
      ),
    );
  }
}
