import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 278,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: backgroundColor3,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/image_shoes.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Running',
                  style: subtitleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
