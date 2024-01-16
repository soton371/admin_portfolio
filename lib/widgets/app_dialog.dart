import 'package:flutter/material.dart';

Future<void> appDialog(BuildContext context,
    {String? title,
    String? content,
    List<Widget> actions = const <Widget>[],
    bool barrierDismissible = false}) async {
  showAdaptiveDialog(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (_) => AlertDialog.adaptive(
      title: Text(title ?? 'Notice'),
      content: Text(content ?? "Something went wrong"),
      actions: actions,
    ),
  );
}
