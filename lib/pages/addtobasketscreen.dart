import 'package:demoapp/models/cartitem.dart';
import 'package:demoapp/widgets/appbutton.dart';
import 'package:demoapp/widgets/chartitemwidget.dart';
import 'package:flutter/material.dart';

class AddtoBasketScreen extends StatefulWidget {
  const AddtoBasketScreen({super.key,});


  @override
  State<AddtoBasketScreen> createState() => _AddtoBasketScreenState();
}

class _AddtoBasketScreenState extends State<AddtoBasketScreen> {
  
  @override
  
  
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Text(
                "My Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
            
              ValueListenableBuilder<List<CartItem>>(
                valueListenable: cartItems,
                builder: (context,data,child) {
                  return Column(
                    
                    children: getChildrenWithSeperator(

                      
                      addToLastChild: false,
                      widgets: cartItems.value.map((e) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 25,
                          ),
                          width: double.maxFinite,
                          child: ChartItemWidget(
                            cartItem: e,
                          ),
                        );
                      }).toList(),
                      seperator: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                        ),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ),
                  );
                }
              ),
              Divider(
                thickness: 1,
              ),
              getCheckoutButton(context)
            ],
          ),
        ),
      ),
    );
    
  }

  Widget getCheckoutButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: AppButton(
        label: "Go To Check Out",
        fontWeight: FontWeight.w600,
        padding: EdgeInsets.symmetric(vertical: 30),
        // trailingWidget: getButtonPriceWidget(),
        onPressed: () {
          showBottomSheet(context);
        },
      ),
    );
  }

  // Widget getButtonPriceWidget() {
  //   return Container(
  //     padding: EdgeInsets.all(2),
  //     decoration: BoxDecoration(
  //       color: Color(0xff489E67),
  //       borderRadius: BorderRadius.circular(4),
  //     ),
  //     child: Text(
  //       "\Rs ${widget}",
  //       style: TextStyle(fontWeight: FontWeight.w600),
  //     ),
  //   );
  // }
  

  void showBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (BuildContext bc) {
          return CheckoutBottomSheet();
        });
  }
  
}

class CheckoutBottomSheet extends StatefulWidget {
  @override
  _CheckoutBottomSheetState createState() => _CheckoutBottomSheetState();
}

class _CheckoutBottomSheetState extends State<CheckoutBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      child: new Wrap(
        children: <Widget>[
          Row(
            children: [
              AppText(
                text: "Checkout",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.close,
                    size: 25,
                  ))
            ],
          ),
          SizedBox(
            height: 45,
          ),
          getDivider(),
          checkoutRow("Delivery", trailingText: "Select Method"),
          getDivider(),
          checkoutRow(
            "Payment",
            trailingWidget: Icon(
              Icons.payment,
            ),
          ),
          getDivider(),
          checkoutRow("Promo Code", trailingText: "Pick Discount"),
          getDivider(),
          checkoutRow("Total Cost", trailingText: "\Rs 50.00"),
          getDivider(),
          SizedBox(
            height: 30,
          ),
          termsAndConditionsAgreement(context),
          Container(
            margin: EdgeInsets.only(
              top: 25,
            ),
            child: AppButton(
              label: "Place Order",
              // fontWeight: FontWeight.w600,
              padding: EdgeInsets.symmetric(
                vertical: 25,
              ),
              onPressed: () {
                onPlaceOrderClicked();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getDivider() {
    return Divider(
      thickness: 1,
      color: Color(0xFFE2E2E2),
    );
  }

  Widget termsAndConditionsAgreement(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: 'By placing an order you agree to our',
          style: TextStyle(
            color: Color(0xFF7C7C7C),
            fontSize: 14,
            fontFamily: Theme.of(context).textTheme.bodyText1?.fontFamily,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: " Terms",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            TextSpan(text: " And"),
            TextSpan(
              text: " Conditions",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]),
    );
  }

  Widget checkoutRow(String label,
      {String? trailingText, Widget? trailingWidget}) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Row(
        children: [
          AppText(
            text: label,
            fontSize: 18,
            color: Color(0xFF7C7C7C),
            fontWeight: FontWeight.w600,
          ),
          Spacer(),
          trailingText == null
              ? (trailingWidget ?? Container())
              : AppText(
                  text: trailingText,
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
          )
        ],
      ),
    );
  }

  void onPlaceOrderClicked() {
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            
          );
        });
  }
  
}

class AppText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign? textAlign;

  const AppText({
    Key? key,
    required this.text,
    this.fontSize = 18,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign == null ? null : TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}



List<Widget> getChildrenWithSeperator(
    {required List<Widget> widgets,
    required Widget seperator,
    bool addToLastChild = true}) {
  List<Widget> children = [];
  if (widgets.length > 0) {
    children.add(seperator);

    for (int i = 0; i < widgets.length; i++) {
      children.add(widgets[i]);

      if (widgets.length - i == 1) {
        if (addToLastChild) {
          children.add(seperator);
        }
      } else {
        children.add(seperator);
      }
    }
  }
  return children;
}




 
      
    
