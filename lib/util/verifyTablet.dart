import 'package:flutter/cupertino.dart';

bool isTablet(BuildContext context) =>
    MediaQuery.of(context).size.shortestSide < 600;
