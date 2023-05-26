import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: ghostOnBoardingImage1,
            title: ghostOnBoardingTitle1,
            subTitle: ghostOnBoardingSubTitle1,
            counterText: ghostOnBoardingCounter1,
            // height: size.height,
            bgColor: ghostOnBoardingPage1Color)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: ghostOnBoardingImage2,
            title: ghostOnBoardingTitle2,
            subTitle: ghostOnBoardingSubTitle2,
            counterText: ghostOnBoardingCounter2,
            // height: size.height,
            bgColor: ghostOnBoardingPage2Color)),
    OnBoardingPageWidget(
        model: OnBoardingModel(
            image: ghostOnBoardingImage3,
            title: ghostOnBoardingTitle3,
            subTitle: ghostOnBoardingSubTitle3,
            counterText: ghostOnBoardingCounter3,
            // height: size.height,
            bgColor: ghostOnBoardingPage3Color)),
  ];

  void onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
}
