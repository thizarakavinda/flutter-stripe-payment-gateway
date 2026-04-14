import 'package:flutter_dotenv/flutter_dotenv.dart';

String get stripePublishableKey {
  final key = dotenv.env['STRIPE_PUBLISHABLE_KEY'];
  if (key == null || key.isEmpty) {
    throw StateError('Missing STRIPE_PUBLISHABLE_KEY in .env');
  }
  return key;
}

String get stripeSecretKey {
  final key = dotenv.env['STRIPE_SECRET_KEY'];
  if (key == null || key.isEmpty) {
    throw StateError('Missing STRIPE_SECRET_KEY in .env');
  }
  return key;
}
