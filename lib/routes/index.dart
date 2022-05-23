import 'package:flutter/cupertino.dart';
import 'package:nft_flutter/pages/detail/detail.dart';

class Routers {
  final BuildContext context;
  Routers(this.context);
  static detailPageRoutes() {
    return (context) => detailPage();
  }
}
