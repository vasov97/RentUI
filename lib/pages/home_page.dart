import 'package:flutter/material.dart';
import 'package:rent_ui/colors.dart';
import 'package:rent_ui/model/real_estate.dart';
import 'package:rent_ui/widgets/category_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List category = ['House', 'Apartment', 'Mansion', 'Penthouse', 'Bungalow'];
  int clicked = 0;
  //RealEstate
  static final realEstates = [
    RealEstate(
        name: 'Hotel Dark Diamond',
        location: 'Madrid, Spain',
        price: '\$200/',
        imagePath: 'assets/h6.jpg'),
    RealEstate(
        name: 'Magnolia Hall',
        location: 'Lisaboa, Portugal',
        price: '\$190/',
        imagePath: 'assets/h8.jpg'),
    RealEstate(
        name: 'Sky Hacienda',
        location: 'Mallorca, Spain',
        price: '\$240/',
        imagePath: 'assets/h9.jpg'),
    RealEstate(
        name: 'House of the Sun',
        location: 'Porto, Portugal',
        price: '\$210/',
        imagePath: 'assets/h10.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Material(
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: AppColors.textGrey, // Border color
                width: 0.5, // Border width
              ),
            ),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.mainGrey,
            elevation: 5,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: AppColors.mainGrey,
                label: '',
                icon: Icon(
                  Icons.home,
                  color: AppColors.textGrey,
                ),
                activeIcon: Icon(
                  Icons.home_filled,
                  color: AppColors.mainYellow,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.mainGrey,
                label: '',
                icon: Icon(
                  Icons.favorite_border_rounded,
                  color: AppColors.textGrey,
                ),
                activeIcon: Icon(
                  Icons.favorite_border,
                  color: AppColors.mainYellow,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.mainGrey,
                label: '',
                icon: Icon(
                  Icons.calendar_month_outlined,
                  color: AppColors.textGrey,
                ),
                activeIcon: Icon(
                  Icons.calendar_month,
                  color: AppColors.mainYellow,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.mainGrey,
                label: '',
                icon: Icon(
                  Icons.message_outlined,
                  color: AppColors.textGrey,
                ),
                activeIcon: Icon(
                  Icons.message,
                  color: AppColors.mainYellow,
                ),
              ),
              BottomNavigationBarItem(
                backgroundColor: AppColors.mainGrey,
                label: '',
                icon: Icon(
                  Icons.person_2_outlined,
                  color: AppColors.textGrey,
                ),
                activeIcon: Icon(
                  Icons.person_2_rounded,
                  color: AppColors.mainYellow,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: AppColors.mainGrey,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Stack(
                      // fit: StackFit.expand,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.35,
                          child: Image.asset(
                            'assets/h1.jpg',
                            width: screenWidth,
                            scale: 1.2,
                            height: screenHeight * 0.35,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: screenWidth,
                          height: screenHeight * 0.35,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                  0.3,
                                ),
                                blurRadius: 8,
                                spreadRadius: 2,
                                offset: const Offset(0, 5),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Colors.black.withOpacity(
                                    0.75), // Dark color with opacity
                                Colors.transparent, // Transparent color
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 48.0,
                            left: 24,
                            right: 14,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Let\'s\nExplore',
                                style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 188, 188, 188),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      30), // Rounded corners
                                  border: Border.all(
                                    color: AppColors.textGrey, // Border color
                                    width: 2, // Border width
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.search, // Icon
                                    size: 25, // Icon size
                                    color: Colors.white, // Icon color
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: screenHeight * 0.28,
                          child: SizedBox(
                            height: screenHeight * 0.06,
                            width: screenWidth,
                            child: ListView.builder(
                              itemCount: category.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return CategoryWidget(
                                  index: index,
                                  category: category,
                                  clicked: clicked,
                                  onClick: () {
                                    setState(() {
                                      clicked = index;
                                    });
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: screenWidth,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Most Popular',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              'See all',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.mainYellow,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Hero(
                                tag: '1',
                                child: Container(
                                  height: screenHeight * 0.43,
                                  width: screenWidth * 0.6,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 103, 102, 102),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () => Navigator.pushNamed(
                                            context, '/estate-page'),
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                            topRight: Radius.circular(12),
                                          ),
                                          child: Image.asset(
                                            realEstates[0].imagePath,
                                            height: screenHeight * 0.27,
                                            fit: BoxFit.fitHeight,
                                            //scale: 0.4,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12.0,
                                          top: 22,
                                        ),
                                        child: Text(
                                          realEstates[0].name,
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(6.0),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: AppColors.textGrey,
                                            ),
                                            Text(
                                              realEstates[0].location,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                color: AppColors.textGrey,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  realEstates[0].price,
                                                  style: const TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                const Text(
                                                  'night',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: AppColors.textGrey,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: Colors.amber[700],
                                                ),
                                                const Text(
                                                  '4.9 (6.1K reviews)',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: AppColors.textGrey,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenHeight * 0.43,
                                width: screenWidth * 0.6,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 103, 102, 102),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ),
                                      child: Image.asset(
                                        realEstates[1].imagePath,
                                        height: screenHeight * 0.27,
                                        fit: BoxFit.fitHeight,
                                        //scale: 0.4,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                        top: 22,
                                      ),
                                      child: Text(
                                        realEstates[1].name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: AppColors.textGrey,
                                          ),
                                          Text(
                                            realEstates[1].location,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: AppColors.textGrey,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                realEstates[1].price,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const Text(
                                                'night',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: AppColors.textGrey,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber[700],
                                              ),
                                              const Text(
                                                '4.8 (6.6K reviews)',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: AppColors.textGrey,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenHeight * 0.43,
                                width: screenWidth * 0.6,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 103, 102, 102),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ),
                                      child: Image.asset(
                                        realEstates[2].imagePath,
                                        height: screenHeight * 0.27,
                                        fit: BoxFit.fitHeight,
                                        //scale: 0.4,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                        top: 22,
                                      ),
                                      child: Text(
                                        realEstates[2].name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: AppColors.textGrey,
                                          ),
                                          Text(
                                            realEstates[2].location,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: AppColors.textGrey,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                realEstates[2].price,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const Text(
                                                'night',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: AppColors.textGrey,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber[700],
                                              ),
                                              const Text(
                                                '4.7 (5.4K reviews)',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: AppColors.textGrey,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: screenHeight * 0.43,
                                width: screenWidth * 0.6,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 103, 102, 102),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        topRight: Radius.circular(12),
                                      ),
                                      child: Image.asset(
                                        realEstates[3].imagePath,
                                        height: screenHeight * 0.27,
                                        fit: BoxFit.fitHeight,
                                        //scale: 0.4,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 12.0,
                                        top: 22,
                                      ),
                                      child: Text(
                                        realEstates[3].name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.location_on_outlined,
                                            color: AppColors.textGrey,
                                          ),
                                          Text(
                                            realEstates[3].location,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: AppColors.textGrey,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                realEstates[3].price,
                                                style: const TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              const Text(
                                                'night',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: AppColors.textGrey,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.amber[700],
                                              ),
                                              const Text(
                                                '4.9 (6.6K reviews)',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: AppColors.textGrey,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
