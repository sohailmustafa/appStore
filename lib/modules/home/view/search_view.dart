import 'package:appstore/common/appTextField.dart';
import 'package:appstore/modules/home/view/subhome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(SubhomeScreen());
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F5FA),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                            "Search",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                      Spacer(),
                      Badge(
                        label: Text("6", style: TextStyle(fontSize: 10)),
                        padding: EdgeInsets.all(2),
                        backgroundColor: Color(0xFFFF7622),
                        offset: Offset(-7, 5),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.store,
                            size: 22,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                    SizedBox(height: 15),
                  AppTextfield(
                    hintText: "Pizza",
                    textFieldType: AppTextFieldType.search,
                    fillColor: Color(0xFFF0F5FA),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(height: 15),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Recent Keywords",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  SizedBox(
                    height: 70,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.fromLTRB(16,0, 0, 16),
                      children: [
                        categoriesTiles("Burger"),
                        categoriesTiles("Sandwich"),
                        categoriesTiles("Pizza"),
                        categoriesTiles("Fries"),
                        categoriesTiles("Pasta"),
                        categoriesTiles("Drinks"),
                        categoriesTiles("Ice Cream"),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Suggested Restaurants",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),

                        SizedBox(height: 15),

                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            restaurantTiles(
                              "assets/images/restaurant5.jpg",
                              "Pansi Restaurant",
                              "4.7 ",
                            ),
                            SizedBox(height: 15),

                            restaurantTiles(
                              "assets/images/restaurant1.jpg",
                              "American Spicy Burger Shop",
                              "4.3 ",
                            ),
                            SizedBox(height: 15),
                            restaurantTiles(
                              "assets/images/restaurant3.jpg",
                              "Cafenio Momo Club",
                              "4.5 ",
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Popular Fast Food",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                        ),
                        // SizedBox(height: 10),
                        SizedBox(
                          height: 180,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
                            children: [
                              itemCard(
                                "assets/images/pizza2.png",
                                "European Pizza",
                                "Ottara Coffe House",
                               
                              ),
                              SizedBox(width: 15),
                              itemCard(
                                "assets/images/pizza.png",
                                "Buffalo Burger",
                                "Cafenio Coffe Club",
                               
                              ),
                              SizedBox(width: 15),
                              itemCard(
                                "assets/images/burger.png",
                                 "European Burger",
                                "Ottara Coffe House",
                              ),
                              SizedBox(width: 15),
                              itemCard(
                                "assets/images/fries.png",
                                 "French Fries",
                                "Ottara Coffe House",
                              ),
                             
                              SizedBox(width: 15),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoriesTiles(String categoryName) {
    return Container(
      height: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withValues(alpha: 0.5),
          width: 1.0,
        ),

        borderRadius: BorderRadius.circular(100),
      ),
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.fromLTRB(25, 10, 25, 10),

      child: Text(
        categoryName,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget restaurantTiles(
    String imagePath,
    String description,
    String rating,

    // IconData icons,
  ) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.withValues(alpha: 0.5),
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,

            decoration: BoxDecoration(
              color: Color(0xFFFFD27C),
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                description,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
  

              _ratingComponent(Icons.star_border_outlined, rating),
            ],
          ),
        ],
      ),
    );
  }

  Widget _ratingComponent(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 25,
          color: Color(0xFFFF7622),
          fontWeight: FontWeight.w500,
        ),
        SizedBox(width: 3),
        Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
      ],
    );
  }

  Widget itemCard(
    String imagePath,
    String title,
    String subTitle,

  ) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 120,
          width: 165,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: .2),
                blurRadius: 4,

                offset: Offset(0, 2),
              ),
            ],
          ),
          margin: EdgeInsets.only(right: 8),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
               
              
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          child: Image.asset(imagePath, height: 90, width: 90),
        ),
      ],
    );
  }
}
