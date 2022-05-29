import 'package:adam_and_eve/widgets/on_board_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

class ShowContent extends StatelessWidget {
  final BoardingModel model;

  const ShowContent({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          model.image,
        fit: BoxFit.fitHeight,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.4,
            ),
            Image.asset(model.icon),
            SizedBox(
              height: height * 0.04,
            ),
            Text(
              model.title,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo'),
            ),


          ],
        ),

        Align(
            alignment: AlignmentDirectional.bottomEnd, child: model.button)
      ],
    );
  }
}
