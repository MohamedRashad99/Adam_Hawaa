import 'package:adam_and_eve/widgets/constants.dart';
import 'package:flutter/material.dart';

import '../screen/drawer/view.dart';
import 'appBar.dart';
class CustomScaffold extends StatelessWidget {
   CustomScaffold({Key? key,required this.body}) : super(key: key);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
final Widget body;
  @override
  Widget build(BuildContext context) {

      return Container(
      color: kAppBarColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kHomeColor,
          drawer:  drawer(context: context) ,
          key: _scaffoldKey,
          appBar: customAppbar(
              icons: Icons.arrow_forward_outlined,
              isIcons: true,
              //press: () => _scaffoldKey.currentState!.openDrawer(),
              context: context),
          body: body,
        ),
      ),
    );
  }
}
