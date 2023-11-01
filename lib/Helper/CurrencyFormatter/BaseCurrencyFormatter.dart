//@dart=2.13
abstract class BaseCurrencyFormatter {

  String formatRupiah(
    String? amount, {
    String currency,
  });

  String formatRupiahInt(Object price, {String currency,});

  String formatRupiahDouble(
    Object price, {
    String currency,
  });

}