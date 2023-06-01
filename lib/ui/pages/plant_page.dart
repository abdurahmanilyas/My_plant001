part of 'pages.dart';

class PlantPage extends StatefulWidget {
  @override
  _PlantPageState createState() => _PlantPageState();
}

class _PlantPageState extends State<PlantPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * defaultMargin;

    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              color: Colors.white,
              height: 100,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Plant Market',
                        style: blackFontStyle1,
                      ),
                      Text(
                        "Let's get some plants",
                        style:
                            greyFontStyle.copyWith(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://i.pinimg.com/474x/8a/f4/7e/8af47e18b14b741f6be2ae499d23fcbe.jpg'),
                            fit: BoxFit.cover)),
                  )
                ],
              ),
            ),
            //// LIST OF PLANT
            Container(
              height: 258,
              width: double.infinity,
              child: BlocBuilder<PlantCubit, PlantState>(
                builder: (_, state) => (state is PlantLoaded)
                    ? ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: state.plants
                                .map((e) => Padding(
                                      padding: EdgeInsets.only(
                                          left: (e == state.plants.first)
                                              ? defaultMargin
                                              : 0,
                                          right: defaultMargin),
                                      child: GestureDetector(
                                          onTap: () {
                                            Get.to(PlantDetailsPage(
                                              transaction: Transaction(
                                                plant: e,
                                                user: (context
                                                        .read<UserCubit>()
                                                        .state as UserLoaded)
                                                    .user,
                                                id: 1,
                                                quantity: 99,
                                                dateTime: DateTime.now(),
                                                status: TransactionStatus
                                                    .on_delivery,
                                                total: (mockPlants[1].price *
                                                            10 *
                                                            1.1)
                                                        .round() +
                                                    50000,
                                              ),
                                              onBackButtonPressed: () {
                                                Get.back();
                                              },
                                            ));
                                          },
                                          child: PlantCard(e)),
                                    ))
                                .toList(),
                          )
                        ],
                      )
                    : Center(child: loadingIndicator),
              ),
            ),
            //// LIST OF PLANT (TABS)
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['New Taste', 'Popular', 'Recommended'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  BlocBuilder<PlantCubit, PlantState>(builder: (_, state) {
                    if (state is PlantLoaded) {
                      List<Plant> foods = state.plants
                          .where((element) =>
                              element.types.contains((selectedIndex == 0)
                                  ? PlantType.newPlant
                                  : (selectedIndex == 1)
                                      ? PlantType.popular
                                      : PlantType.recommended))
                          .toList();

                      return Column(
                        children: foods
                            .map((e) => Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      defaultMargin, 0, defaultMargin, 16),
                                  child: PlantListItem(
                                      plant: e, itemWidth: listItemWidth),
                                ))
                            .toList(),
                      );
                    } else {
                      return Center(
                        child: loadingIndicator,
                      );
                    }
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        )
      ],
    );
  }
}
