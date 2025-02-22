import 'package:flutter/material.dart';
import 'package:myapp/theme.dart';

class ChatBuble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  ChatBuble(
      {super.key,
      this.isSender = false,
      this.text = "",
      this.hasProduct = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: defaultMargin),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          hasProduct ? productPreview() : SizedBox(),
          Row(
            mainAxisAlignment:
                isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: isSender ? backgroundColor5 : backgroundColor4,
                  ),
                  child: Text(
                    text,
                    style: primaryTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget productPreview() {
    return Container(
      width: 230,
      margin: EdgeInsets.only(
        bottom: 12,
      ),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isSender ? 12 : 0),
          topRight: Radius.circular(isSender ? 0 : 12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: isSender ? backgroundColor5 : backgroundColor4,
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/image_shoes.png",
                  width: 70,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "COURT VISION 2.0 SHOES",
                      style: primaryTextStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "\$57,15",
                      style: priceTextStyle.copyWith(
                        fontWeight: medium,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: primaryColor,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Add to Cart",
                  style: purpleTextStyle,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Buy Now",
                  style: TextStyle(
                    color: backgroundColor5,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
