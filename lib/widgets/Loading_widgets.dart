import 'package:flutter/material.dart';

class LoadingWidgets extends StatelessWidget {
  const LoadingWidgets({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}
