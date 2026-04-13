import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
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
                      Text(
                        "Details",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 210,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 170,
                          decoration: BoxDecoration(
                            
                            color: Color(0xFFFFAA5F),
                            borderRadius: BorderRadius.circular(15),
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.fromLTRB(0, 0, 25, 20),
                                decoration: BoxDecoration(
                                  color: Colors.white.withValues(alpha: 0.5),
                                  borderRadius: BorderRadius.circular(100),
                                ),

                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 25,
                                  color: Colors.white.withValues(alpha: 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          bottom: 0,
                          right: 0,
                          left: 0,
                          child: Image.asset(
                            "assets/images/pizza2.png",
                            width: 190,
                            height: 190,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 260,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withValues(alpha: 0.2),
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.coffee_rounded,
                            size: 28,
                            color: Colors.redAccent,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Uttora Coffe House',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Pizza Calozone European',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Prosciutto e funghi is a pizza variety that is topped with tomato sauce.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border_outlined,
                        size: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '4.7',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(
                        Icons.local_shipping,
                        size: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Free',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 30),
                      Icon(
                        Icons.access_time_outlined,
                        size: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '20 min',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'SIZE:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),

                      // facing an issue for printing  double quotes
                      SizedBox(width: 25),
                      sizeCard(false, '10"'),
                      SizedBox(width: 20),
                      sizeCard(true, '14""'),
                      SizedBox(width: 20),
                      sizeCard(false, '16""'),
                    ],
                  ),

                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'INGRIDENTS',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // facing an issue for printing  double quotes
                          ingridentsCard(Icons.local_fire_department_outlined),
                          ingridentsCard(Icons.set_meal_outlined),
                          ingridentsCard(Icons.lens_blur_outlined),
                          ingridentsCard(Icons.kebab_dining_outlined),
                          ingridentsCard(Icons.eco_outlined),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F5FA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Text(
                        "\$32",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF121223),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF41414F),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "2",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF41414F),
                                borderRadius: BorderRadius.circular(100),
                              ),
                             
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget sizeCard(bool isActive, String productSize) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isActive ? Color(0xFFF58D1D) : const Color(0xFFF0F5FA),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        productSize,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: isActive
              ? Color.fromARGB(255, 255, 255, 255)
              : Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }

  Widget ingridentsCard(IconData icon) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 250, 174, 174).withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(
        icon,
        size: 25,
        color: const Color.fromARGB(255, 255, 38, 0).withValues(alpha: 0.5),
      ),
    );
  }
}
