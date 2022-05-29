import '../../../../widgets/on_board_button.dart';
import 'model.dart';

class Content {
  List<BoardingModel> boarding = [
    BoardingModel(
      button: OnBoardButton(onPressed: (){}, title: "تخطي"),
      icon: "assets/image/salons.png",
      image: "assets/image/onboard1.png",
      title: "أقضل صالونات التجميل من حولك ترضي طموحاتك",
    ),
    BoardingModel(
      button:OnBoardButton(onPressed: (){}, title: "تخطي") ,
      icon: "assets/image/Group 1764.png",
      image: "assets/image/onboard 2.png",
      title: "أفضل الصالونات علي مستوي البلاد",
    ),
    BoardingModel(
      button:OnBoardButton(onPressed: (){}, title: "التالي") ,
      icon: "assets/image/beautycentre.png",
      image: "assets/image/onboard 3.png",
      title: "أفضل عروض وباقات تجميل متنوعة",
    )
  ];
}
