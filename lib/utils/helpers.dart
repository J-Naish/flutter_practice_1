String formatNumberWithCommas(int number) {

  String numString = number.abs().toString();
  String sign = number.isNegative ? '-' : '';

  if (numString.length <= 3) {
    return sign + numString;
  }

  String result = '';
  for (int i = 0; i < numString.length; i++) {
    if (i > 0 && (numString.length - i) % 3 == 0) {
      result += ',';
    }
    result += numString[i];
  }

  return sign + result;
}

String getFormattedPrice(int price) {
  return '¥ ${formatNumberWithCommas(price)}';
}
