import 'package:flutter/cupertino.dart';

extension FocusNodeExtension on FocusNode {
  FocusNode get alwaysDisabledFocusNode => _AlwaysDisabledFocusNode();
}

class _AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
