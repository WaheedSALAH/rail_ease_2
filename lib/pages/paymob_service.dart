import 'dart:convert';

import 'package:http/http.dart' as http;

class PaymobService {
  static const String apiKey =
      'ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2T1Rnek1EazRMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkuVUh6N04tZnkxQXBMLTJHRXBKSnV4Sk43WkZJRzViZG9pUkt1Njh3N2JnbUJuM0Z4YkZERktaNVA4TlBuZFJoRWJuUmt0eXNvYUxFMHpxWTJWanE5Unc=';

  Future<String?> authenticate() async {
    final response = await http.post(
      Uri.parse('https://accept.paymobsolutions.com/api/auth/tokens'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'api_key': apiKey}),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body)['token'];
    } else {
      print('Failed to authenticate: ${response.body}');
      return null;
    }
  }

  Future<Map<String, dynamic>?> createOrder(
      String token, int amountCents) async {
    final response = await http.post(
      Uri.parse('https://accept.paymobsolutions.com/api/ecommerce/orders'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({
        'auth_token': token,
        'delivery_needed': 'false',
        'amount_cents': amountCents,
        'currency': 'EGP',
        'items': [],
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      print('Failed to create order: ${response.body}');
      return null;
    }
  }

  Future<String?> getPaymentKey(
      String token, int amountCents, int orderId) async {
    final response = await http.post(
      Uri.parse(
          'https://accept.paymobsolutions.com/api/acceptance/payment_keys'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
      body: jsonEncode({
        'auth_token': token,
        'amount_cents': amountCents,
        'expiration': 3600,
        'order_id': orderId,
        'billing_data': {
          'apartment': 'NA',
          'email': 'test@test.com',
          'floor': 'NA',
          'first_name': 'Test',
          'street': 'NA',
          'building': 'NA',
          'phone_number': '+201000000000',
          'shipping_method': 'NA',
          'postal_code': 'NA',
          'city': 'NA',
          'country': 'NA',
          'last_name': 'Test',
          'state': 'NA'
        },
        'currency': 'EGP',
        'integration_id': '4602033',
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body)['token'];
    } else {
      print('Failed to get payment key: ${response.body}');
      return null;
    }
  }
}
