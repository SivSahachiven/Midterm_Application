import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NikeScreen extends StatefulWidget {
  const NikeScreen({super.key});

  @override
  State<NikeScreen> createState() => _NikeScreenState();
}

class _NikeScreenState extends State<NikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon:const Icon(Icons.arrow_back, color: Colors.black), // Back icon
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        title: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildCategoryItem('', 'assets/img/nike_logo.jpg'),
              // const SizedBox(width: 10), // Spacing between icon and text
              // const Text(
              //   '',
              //   style: TextStyle(
              //     color: Colors.black, // Set text color if needed
              //     fontSize: 20,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/filter.svg',
              width: 24.0,
              height: 24.0,
            ),
            onPressed: () {
              // Handle right icon press
            },
          ),
        ],
      ),
      body: ListView(
        // padding: const EdgeInsets.all(15),
        children: [
          // Search Field
          Container(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            margin: const EdgeInsets.only(bottom: 15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color of the container
                      borderRadius:
                          BorderRadius.circular(8.0), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Shadow color
                          spreadRadius: 1, // Spread of the shadow
                          blurRadius: 1, // Blur effect of the shadow
                          offset:const Offset(0, 1), // Position of the shadow
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon:const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Subcategories
          SizedBox(          
            height: 50, // Adjust height as needed
            child: ListView(
              
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              children: [
                _buildSubCategoryItem('Shoes', Colors.black, Colors.white),
                _buildNonActiveSubCategoryItem('Bags', Colors.white, Colors.black),
                _buildNonActiveSubCategoryItem('Clothes', Colors.white, Colors.black),
                _buildNonActiveSubCategoryItem(
                    'Accessories', Colors.white, Colors.black),
              ],
            ),
          ),

          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            childAspectRatio: 0.6 / 0.8,
            physics:const NeverScrollableScrollPhysics(),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/air_force_one.png',
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'NIKE AIR FORCE 1',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '120 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite, // Default heart icon
                            color: Colors.red, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/nike_air_zoom.png',
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'NIKE AIR ZOOM',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Spiridon cage 2',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '225 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite_border, // Default heart icon
                            color: Colors.black45, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/dunk-low.jpg',
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'DENK LOW SILVER',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '175 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite_border, // Default heart icon
                            color: Colors.black45, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/giannis.png',
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'GIANNIS',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Immortality 4',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '115 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite, // Default heart icon
                            color: Colors.red, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/nike_clogposite.jpg',
                                width: 125,
                                height: 125,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'NIKE CLOGPOSITE',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Chrome and Black',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '180 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite, // Default heart icon
                            color: Colors.red, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/sb_dunk_low.jpg',
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'NIKE SB Dunk Low',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '150 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite, // Default heart icon
                            color: Colors.red, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 5, 10),
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/air-180.jpg',
                                width: 125,
                                height: 125,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'NIKE AIR 180',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Black and Dusty',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '190 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite_border, // Default heart icon
                            color: Colors.black45, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 10, 10),
                child: Card(
                  color: const Color.fromARGB(255, 245, 245, 245),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                'assets/img/air-max.jpg',
                                width: 120,
                                height: 120,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Man Shoes',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 186, 186, 186),
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    'NIKE AIR MAX',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Canyon Rust and Red',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding:const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '235 \$',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(15, 5, 15, 5),
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadiusDirectional.all(
                                      Radius.circular(5),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/cart.svg', // Replace with your SVG icon path
                                    color: Colors.white,
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: GestureDetector(
                          onTap: () {
                            // Handle the heart icon tap event
                          },
                          child: const Icon(
                            Icons.favorite_border, // Default heart icon
                            color: Colors.black45, // Set color if needed
                            size: 22,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String label, String imagePath) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: 80.0, // Adjust width as needed
            height: 80.0, // Adjust height as needed
            fit: BoxFit.cover, // Ensures the image covers the circle
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style:const TextStyle(color: Colors.black), // Adjust text color if needed
        ),
      ],
    );
  }

  Widget _buildNonActiveSubCategoryItem(
      String subCategoryName, Color subBackgroundColor, Color textColor) {
    return Container(
      width: 120, // Adjust width as needed
      height: 80, // Adjust height as needed
      margin: const EdgeInsets.only(right: 15, bottom: 15),
      decoration: BoxDecoration(
        color: subBackgroundColor,
        border: Border.all(color: Colors.white, width: 5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset:const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          subCategoryName,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
  Widget _buildSubCategoryItem(
      String subCategoryName, Color subBackgroundColor, Color textColor) {
    return Container(
      width: 120, // Adjust width as needed
      height: 80, // Adjust height as needed
      margin: const EdgeInsets.only(right: 15, bottom: 15),
      decoration: BoxDecoration(
        color: subBackgroundColor,
        border: Border.all(color: Colors.black, width: 5),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset:const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          subCategoryName,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}