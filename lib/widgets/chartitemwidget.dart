import 'package:demoapp/models/cartitem.dart';
import 'package:demoapp/pages/addtobasketscreen.dart';
import 'package:demoapp/widgets/itemwidgetcounter.dart';
import 'package:flutter/material.dart';

class ChartItemWidget extends StatefulWidget {
  ChartItemWidget({Key? key, required this.cartItem}) : super(key: key);
  final CartItem cartItem;

  @override
  _ChartItemWidgetState createState() => _ChartItemWidgetState();
}

class _ChartItemWidgetState extends State<ChartItemWidget> {
  final double height = 110;

  final Color borderColor = Color(0xffE2E2E2);

  final double borderRadius = 18;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.symmetric(
        vertical: 30,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            imageWidget(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: widget.cartItem.item.name,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 5,
                ),
                AppText(
                    text: widget.cartItem.item.description,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                SizedBox(
                  height: 12,
                ),
                Spacer(),
                ItemCounterWidget(
                  onAmountChanged: (newAmount) {
                    setState(() {
                      widget.cartItem.quantity = newAmount;
                    });
                  },
                  cartItem: widget.cartItem,
                )
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () { 
                   setState(() {
                      
                      cartItems.value.removeWhere((element) => element.key == widget.cartItem.key);
                      cartItems.notifyListeners();
                   });

                   },
                  child: Icon(
                    Icons.close,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
                Spacer(
                  flex: 5,
                ),
                Container(
                  width: 70,
                  child: AppText(
                    text: "\Rs${getPrice().toStringAsFixed(2)}",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    textAlign: TextAlign.right,
                  ),
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget imageWidget() {
    return Container(
      width: 100,
      child: Image.asset(widget.cartItem.item.imagePath),
    );
  }

  double getPrice() {
    return widget.cartItem.quantity * widget.cartItem.item.price;
  }
}
