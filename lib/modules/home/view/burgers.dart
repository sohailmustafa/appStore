import 'package:flutter/material.dart';

class Burgers extends StatelessWidget {
  const Burgers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,

        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F5FA),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.arrow_back_ios_new, size: 25),
                  ),
                  SizedBox(width: 25),
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withValues(alpha: 0.5),
                        width: 1.0,
                      ),

                      borderRadius: BorderRadius.circular(100),
                    ),

                    padding: EdgeInsets.fromLTRB(15, 0, 5, 0),

                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Details",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 0),
                        Icon(
                          Icons.arrow_drop_down_rounded,
                          size: 30,
                          color: Color.fromARGB(255, 255, 150, 59),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.search, size: 25, color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF0F5FA),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Icon(Icons.bar_chart, size: 25),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Popular Burgers',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 0.90,
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          itemCard(
                            "assets/images/beef.png",
                            "Beef Burger",
                            "Ottara Coffe House",
                            "\$70",
                          ),

                          itemCard(
                            "assets/images/cheese.png",
                            "Cheese Burger",
                            "Cafenio Coffe Club",
                            "\$60",
                          ),

                          itemCard(
                            "assets/images/veg.png",
                            "Veg Burger",
                            "Ottara Coffe House",
                            "\$50",
                          ),

                          itemCard(
                            "assets/images/burger.png",
                            "Burger Bistro",
                            "Ottara Coffe House",
                            "\$65",
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Open Restaurants",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
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
              ),
            ],
          ),
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
          height: 160,

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
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 0.1,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF7622),
                      borderRadius: BorderRadius.circular(100),
                    ),

                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(top: 0, child: Image.asset(imagePath, height: 100)),
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
