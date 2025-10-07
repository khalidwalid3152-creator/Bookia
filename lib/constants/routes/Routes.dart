import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

PushTo(BuildContext context, String route) {
  context.push(route);
}

ReplaceTo(BuildContext context, String route) {
  context.go(route);
}

RemoveUntil(BuildContext context, String route) {
  context.go(route);
}
pop(BuildContext context) {
  context.pop();
}
