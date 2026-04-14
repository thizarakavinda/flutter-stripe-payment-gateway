import 'package:flutter/material.dart';
import 'package:flutter_stripe_payment/services/stripe_service.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Stripe Payment Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blue),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          onPressed: () {
            StripeService.instance.makePayment();
          },
          child: Text('Purchase'),
        ),
      ),
    );
  }
}
