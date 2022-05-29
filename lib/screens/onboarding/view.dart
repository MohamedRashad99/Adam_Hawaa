import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/constants.dart';
import 'page/views/custom_content.dart';
import 'page/views/data.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {



  final _controller = PageController();
  Content content = Content();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    /// Caching onBoarding
    // LocalStorage.setBool('onBoarding', true);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kLightText,
      body: Container(
        color: kBlackText,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                itemCount: content.boarding.length,
                itemBuilder: (context, index) =>
                    ShowContent(model: content.boarding[index]),
                onPageChanged: (int index) {
                  setState(() {
                    currentPage = index;
                  });
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              effect: const ExpandingDotsEffect(
                dotColor: Colors.grey,
                activeDotColor: kPrimaryColor,
                dotHeight: 10,
                expansionFactor: 2,
                dotWidth: 10,
                spacing: 5.0,
              ),
              count: content.boarding.length,
            ),
          ],
        ),
      ),
    );
  }
}
