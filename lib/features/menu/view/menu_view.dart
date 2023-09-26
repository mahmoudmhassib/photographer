import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  Map<String, dynamic>? paymentIntent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("Make Payment"),
          onPressed: () async {
            await makePayment();
            print('156205265');
          },

        ),
      ),
    );
  }

  makePayment() async {
    //TODO:step 1 Payment Intent
    try {
      paymentIntent = await createPaymentIntent('80', 'USD');
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntent!['client_secret'],
            merchantDisplayName: 'Mahmod',
            style: ThemeMode.dark,
          ));
      displaySheet();
      //TODO:e==mount
      //TODO:c==currency
    } catch (e, s) {
      print('$e $s');
    }
  }

  displaySheet() async {
    try {
      await Stripe.instance.presentPaymentSheet().then((value) {
        showDialog(context: context, builder: (_) =>
            AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: const[
                      Icon(Icons.check_circle, color: Colors.green,),
                      Text('Payment Successful', style: TextStyle(color: Colors
                          .red),),
                    ],
                  ),
                ],
              ),
            ));

        paymentIntent = null;
      }).onError((error, stackTrace) {
        print('$error $stackTrace');
      });
    } on StripeException catch (e) {
      print('Error is:---> $e');
      showDialog(
          context: context,
          builder: (_) =>
              AlertDialog(
                content: Text('Cancelled'),
              )
      );
    } catch (e) {
      print('$e');
    }
  }

  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount(amount),
        'currency': currency,
        'payment_method_types[]': 'card',
      };
      var response = await http.post(
        Uri.parse('https://api.stripe.com/v1/payment_intents'),
        headers: {
          'Authorization': 'sk_test_51Nc587IEWAmTzenpO7gkpHskOsDCoa4p1Uwm4zZOJJoBr8q3JOCIQakplRASqXrfacwTTYHZodChwMTlS7mag5c300C03msNQU',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: body,
      );
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }

  calculateAmount(String amount) {
    final convertAmount = (int.parse(amount)) * 100;
    return convertAmount.toString();
  }
}
