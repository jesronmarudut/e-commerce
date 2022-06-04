import 'package:flutter/material.dart';
import 'package:sepatu/theme.dart';

class ChatTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail_chat');
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/image_shop_logo.png',
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Joe Alexander',
                        style: primaryTextStyle.copyWith(
                            fontSize: 15, fontWeight: semiBold),
                      ),
                      Text(
                        'Punten, size 42 aya nte ?',
                        style: thirdTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: thirdTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            ),
          ],
        ),
      ),
    );
  }
}
