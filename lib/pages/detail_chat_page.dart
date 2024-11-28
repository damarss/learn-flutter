import 'package:flutter/material.dart';
import 'package:myapp/theme.dart';
import 'package:myapp/widgets/chat_buble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      resizeToAvoidBottomInset: false,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }

  PreferredSizeWidget header() {
    return PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: AppBar(
        iconTheme: IconThemeData(
          color: primaryTextColor,
        ),
        backgroundColor: backgroundColor1,
        centerTitle: false,
        toolbarHeight: 70,
        toolbarTextStyle: TextStyle(backgroundColor: Colors.black),
        title: Row(
          children: [
            Image.asset(
              "assets/image_shop_logo_online.png",
              width: 50,
              height: 50,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Shoe Store",
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                Text(
                  "Online",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget chatInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productPreview(),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: "Type Message...",
                        hintStyle: subtitleTextStyle,
                      ),
                      style: primaryTextStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Image.asset(
                "assets/button_send.png",
                width: 45,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget productPreview() {
    return Container(
      width: 225,
      height: 74,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: primaryColor,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/image_shoes.png",
              width: 54,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "COURT VISION PRO 2.0",
                  style: primaryTextStyle.copyWith(
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "\$57,15",
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 19,
          ),
          Image.asset(
            "assets/button_close.png",
            width: 22,
            height: 22,
          ),
        ],
      ),
    );
  }

  Widget content() {
    return ListView(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      children: [
        ChatBuble(
          isSender: true,
          text: "Hi, is this item still available?",
          hasProduct: true,
        ),
        ChatBuble(
          isSender: false,
          text: "Good night, this item is available only for size 41 and 43.",
        ),
      ],
    );
  }
}
