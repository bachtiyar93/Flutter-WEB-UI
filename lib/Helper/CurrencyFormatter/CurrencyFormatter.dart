
import 'package:intl/intl.dart';
import 'BaseCurrencyFormatter.dart';

class CurrencyFormatter implements BaseCurrencyFormatter {

  final NumberFormat _formatter = NumberFormat.currency(
    locale: 'id_ID',
    decimalDigits: 0,
    symbol: '',
    name: '',
  );

  @override
  String formatRupiah(
    String? amount, {
    String currency = 'Rp. ',
  }) {
    if (amount == null || amount.isEmpty || amount == 'null') return '';

    final amountInDouble = double.parse(amount);
    if (amountInDouble < 0) {
      return '-$currency${_formatter.format(amountInDouble.abs())}';
    }
    return '$currency${_formatter.format(amountInDouble)}';
  }

  @override
  String formatRupiahInt(
    Object price, {
    String currency = 'Rp',
  }) {
    if (price is double)
      return formatRupiahDouble(price, currency: currency);

    if (price is String)
      return formatRupiah(price, currency: currency);

    if (price is int) {
      if (price < 0) {
        return '-$currency${_formatter.format(price.abs())}';
      } else {
        return '$currency${_formatter.format(price)}';
      }
    }
    
    return '$price';
  }

  @override
  String formatRupiahDouble(
    Object price, {
    String currency = 'Rp',
  }) {
    if (price is int)
      return formatRupiahInt(price, currency: currency);

    if (price is String)
      return formatRupiah(price, currency: currency);

    if (price is double) {
      if (price < 0) {
        return '-$currency${_formatter.format(price.abs())}';
      } else {
        return '$currency${_formatter.format(price)}';
      }
    }

    return '$price';
  }
}
