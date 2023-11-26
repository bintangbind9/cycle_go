import 'package:flutter/widgets.dart' show SizedBox;

extension Sizedbox on num {
  SizedBox get sizedBoxHeight => SizedBox(height: toDouble());
  SizedBox get sizedBoxWidth => SizedBox(width: toDouble());
}
