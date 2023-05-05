part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yeay! Completed",
        subtitle: "Now you are able to order\nsome plants as a self reward",
        picturePath: 'assets/plant_wishes.png',
        buttonTap1: () {},
        buttonTitle1: 'Find Plants',
        buttonTap2: () {},
        buttonTitle2: 'Find Plants',
      ),
    );
  }
}
