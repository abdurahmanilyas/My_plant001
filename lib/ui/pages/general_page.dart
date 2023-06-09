part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? onBackButtonPressed;
  final Widget? child;
  final Color? backColor;

  const GeneralPage({
    Key? key,
    this.title = "Title",
    this.subtitle = "subtitle",
    this.onBackButtonPressed,
    this.child,
    this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.white),
          SafeArea(
            child: Container(
              color: backColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          onBackButtonPressed != null
                              ? GestureDetector(
                            onTap: onBackButtonPressed,
                            child: Container(
                              width: 24,
                              height: 24,
                              margin: EdgeInsets.only(right: 26),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    'assets/back_arrow.png',
                                  ),
                                ),
                              ),
                            ),
                          )
                              : SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                title,
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                subtitle,
                                style: GoogleFonts.poppins(
                                  color: Color(0xff8D92A3),
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 8,
                      width: double.infinity,
                      color: Color(0xffFAFAFC),
                    ),
                    if (child != null) child!,
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
