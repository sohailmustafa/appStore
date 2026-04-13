import 'package:appstore/common/appTextField.dart';
import 'package:appstore/modules/home/view/main_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubhomeScreen extends StatelessWidget {
  const SubhomeScreen({super.key});

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
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(MainHome());
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F5FA),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.menu, size: 22, color: Colors.black),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "DELIVER TO",
                        style: TextStyle(
                          color: Color(0xFFFF7622),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Halal Lab Office",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Badge(
                    label: Text("4", style: TextStyle(fontSize: 10)),
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
                      child: Icon(Icons.store, size: 22, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          "Hey Halal,",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Good Afternoon!",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: AppTextfield(
                      hintText: "Search dishes, restaurants",
                      textFieldType: AppTextFieldType.search,
                      fillColor: Color(0xFFF0F5FA),
                    ),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Text(
                          "All Categories",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              "See All",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.arrow_forward_ios, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 210,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.fromLTRB(16, 10, 0, 10),
                      children: [
                        itemCard(
                          "assets/images/pizza.png",
                          "Pizza",
                          "Starting",
                          "\$10",
                        ),
                        SizedBox(width: 15),
                        itemCard(
                          "assets/images/burger.png",
                          "Buger",
                          "Starting",
                          "\$20",
                        ),
                        SizedBox(width: 15),
                        itemCard(
                          "assets/images/pasta.png",
                          "Pasta",
                          "Starting",
                          "\$15",
                        ),
                        SizedBox(width: 15),
                        itemCard(
                          "assets/images/fries.png",
                          "Fries",
                          "Starting",
                          "\$10",
                        ),
                        SizedBox(width: 15),
                        itemCard(
                          "assets/images/pasta.png",
                          "Pasta",
                          "Starting",
                          "\$20",
                        ),
                        SizedBox(width: 15),
                        itemCard(
                          "assets/images/drinks.png",
                          "Drinks",
                          "Starting",
                          "\$15",
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Open Restaurants",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Text(
                                  "See All",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black87,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(Icons.arrow_forward_ios, size: 20),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 20),

                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            restaurantTiles(
                              "https://i.pinimg.com/736x/41/53/75/415375d110ad5cb7d52a61b907ad4109.jpg",
                              "Rose Garden Restaurant",
                              "Burger - Chicken ",
                              "4.5",
                              "2.3 km",
                              "30-40 min",
                            ),
                            restaurantTiles(
                              "https://i.pinimg.com/1200x/67/7d/cf/677dcf1d2313d197a484f8e716bec821.jpg",
                              "Rose Garden Restaurant",
                              "Pizza - Olive - Riche - Wings",
                              "4.9",
                              "1.5 km",
                              "20-30 min",
                            ),
                            restaurantTiles(
                              "https://i.pinimg.com/736x/b0/b4/1d/b0b41df1d7371e74b9bf84d7646be6bf.jpg",
                              "Rose Garden Restaurant",
                              "Burger - Chicken - Riche - Wings",
                              "3.9",
                              "2.7 km",
                              "30-50 min",
                            ),
                          ],
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

  Widget itemCard(
    String imagePath,
    String title,
    String subTitle,
    String price,
  ) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 150,
          width: 150,
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
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  Spacer(),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
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
          child: Image.asset(imagePath, height: 110, width: 110),
        ),
      ],
    );
  }

  Widget restaurantTiles(
    String imagePath,
    String name,
    String description,
    String rating,
    String distance,
    String deliveryTime,
    // IconData icons,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 150,

          decoration: BoxDecoration(
            color: Color(0xFFFFD27C),
            borderRadius: BorderRadius.circular(15),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(imagePath, fit: BoxFit.cover),
          ),
        ),
        SizedBox(height: 10),
        Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            _ratingComponent(Icons.star_border_outlined, rating),
            SizedBox(width: 20),
            _ratingComponent(Icons.local_shipping_outlined, distance),
            SizedBox(width: 20),
            _ratingComponent(Icons.access_time, deliveryTime),
          ],
        ),
        SizedBox(height: 20),
      ],
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
        SizedBox(width: 5),
        Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
      ],
    );
  }
}
