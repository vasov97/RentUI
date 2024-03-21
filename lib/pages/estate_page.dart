import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';
import 'package:rent_ui/widgets/animated_card.dart';

class EstatePage extends StatefulWidget {
  const EstatePage({super.key});

  @override
  State<EstatePage> createState() => _EstatePageState();
}

class _EstatePageState extends State<EstatePage> {
  bool isExpanded = false;
  bool isExpanded2 = false;
  bool isExpanded3 = false;
  bool isExpanded4 = false;
  final pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(_onPageChanged);
  }

  void _onPageChanged() {
    setState(() {
      _currentPage = pageController.page!.round();
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Material(
      child: Scaffold(
        backgroundColor: AppColors.mainGrey,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColors.mainGrey,
          leading: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Select a room',
              style: TextStyle(
                fontSize: 28,
                color: AppColors.textGrey,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.78,
              child: PageView(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                scrollDirection: Axis.horizontal,
                children: [
                  AnimatedCard(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    isExpanded: isExpanded,
                    onCardDragged: (details) {
                      if (details.delta.dy < 0) {
                        setState(() {
                          isExpanded = true;
                        });
                      } else if (details.delta.dy > 0) {
                        setState(() {
                          isExpanded = false;
                        });
                      }
                    },
                    room: 'Bedroom',
                    imageName: 'h11',
                  ),
                  AnimatedCard(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    isExpanded: isExpanded2,
                    onCardDragged: (details) {
                      if (details.delta.dy < 0) {
                        setState(() {
                          isExpanded2 = true;
                        });
                      } else if (details.delta.dy > 0) {
                        setState(() {
                          isExpanded2 = false;
                        });
                      }
                    },
                    room: 'Bathroom',
                    imageName: 'bath',
                  ),
                  AnimatedCard(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    isExpanded: isExpanded3,
                    onCardDragged: (details) {
                      if (details.delta.dy < 0) {
                        setState(() {
                          isExpanded3 = true;
                        });
                      } else if (details.delta.dy > 0) {
                        setState(() {
                          isExpanded3 = false;
                        });
                      }
                    },
                    room: 'Kitchen',
                    imageName: 'kitchen',
                  ),
                  AnimatedCard(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    isExpanded: isExpanded4,
                    onCardDragged: (details) {
                      if (details.delta.dy < 0) {
                        setState(() {
                          isExpanded4 = true;
                        });
                      } else if (details.delta.dy > 0) {
                        setState(() {
                          isExpanded4 = false;
                        });
                      }
                    },
                    room: 'Living room',
                    imageName: 'living',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _currentPage == 0
                            ? AppColors.mainYellow
                            : AppColors.textGrey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _currentPage == 1
                            ? AppColors.mainYellow
                            : AppColors.textGrey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _currentPage == 2
                            ? AppColors.mainYellow
                            : AppColors.textGrey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, right: 3.0),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: _currentPage == 3
                            ? AppColors.mainYellow
                            : AppColors.textGrey),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
