import 'package:flutter/material.dart';
import 'package:midterm_application/screens/nike_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(
      icon: SizedBox(
        width: 20, // Adjust width
        height: 20, // Adjust height
        child: Icon(Icons.home, size: 30), // Adjust icon size
      ),
      label: '', // Empty label
    ),
    BottomNavigationBarItem(
      icon: SizedBox(
        width: 20, // Adjust width
        height: 20, // Adjust height
        child: Icon(Icons.favorite_border, size: 30), // Adjust icon size
      ),
      label: '', // Empty label
    ),
    BottomNavigationBarItem(
      icon: SizedBox(
        width: 20, // Adjust width
        height: 20, // Adjust height
        child: Icon(Icons.shopping_cart_outlined, size: 30), // Adjust icon size
      ),
      label: '', // Empty label
    ),
    BottomNavigationBarItem(
      icon: SizedBox(
        width: 20, // Adjust width
        height: 20, // Adjust height
        child: Icon(Icons.person_outline, size: 30), // Adjust icon size
      ),
      label: '', // Empty label
    ),
  ],
  // currentIndex: _selectedIndex,
  // onTap: _onItemTapped,
  selectedItemColor: Colors.blue,
  unselectedItemColor: Colors.grey,
  showSelectedLabels: false,
  showUnselectedLabels: false,
  backgroundColor: Colors.white,
),

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: <Widget>[
              const SizedBox(width: 8),
              // Text(
              //   'GOAT',
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 20,
              //   ),
              // ),
              
              Image.asset(
                'assets/img/goat.png',
                width: 80, // Adjust width as needed
                height: 80, // Adjust height as needed
              ),
              const Spacer(),
              const Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search',
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 20),
                // Banner Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/img/nike_banner.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                const SizedBox(height: 16.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'SHOW ALL',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                         onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>const NikeScreen()),
                          );
                        },
                      child: buildCategoryItem('assets/img/nike_logo.jpg', 'NIKE'),
                    ),
                      buildCategoryItem('assets/img/supreme.png', 'SUPREME'),
                      buildCategoryItem('assets/img/gucci_logo_copy.png', 'GUCCI'),
                      buildCategoryItem('assets/img/adidas.jpg', 'ADIDAS'),
                      buildCategoryItem('assets/img/off_white_logo.png', 'OFF-WHITE'),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'SHOW ALL',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                GridView.count(
                
                crossAxisCount: 2, // Adjust the number of columns
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: <Widget>[
                  // Grid items
                  buildGridCardHeart('assets/img/air_force_one.png', 'NIKE AIR FORCE 1', 'Man Shoes', '\$120'),
                  buildGridCard('assets/img/dunk-low.jpg', 'DENK LOW SILVER', 'Man Shoes', '\$175'),
                  buildGridCard('assets/img/nike_air_zoom.png', 'NIKE AIR ZOOM', 'Spiridon cage 2', '\$225'),
                  buildGridCardHeart('assets/img/giannis.png', 'GIANNIS', 'Immortality 4', '\$115'),
                  buildGridCardHeart('assets/img/nike_clogposite.jpg', 'NIKE CLOGPOSITE', 'comfortable shoes', '\$180'),
                  buildGridCardHeart('assets/img/sb_dunk_low.jpg', 'NIKE SB Dunk Low', 'Man Shoes', '\$150'),
                ],
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget buildCategoryItem(String imagePath, String label) {
  return Column(
    children: <Widget>[
      Container(
        width: 60, // Diameter of the circle
        height: 60, // Diameter of the circle
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the circle
          shape: BoxShape.circle, // Circular shape
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 2, // Spread of the shadow
              blurRadius: 5, // Blur radius of the shadow
              offset: const Offset(0, 4), // Offset of the shadow
            ),
          ],
        ),
        child: Center(
          child: ClipOval(
            child: Image.asset(
              imagePath,
              width: 60, // Match the width of the container
              height: 60, // Match the height of the container
              fit: BoxFit.cover, // Ensure the image covers the circle
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text(label, style:const TextStyle(fontWeight: FontWeight.bold)),
    ],
  );
}

// Widget buildGridCard(String imagePath, String title, String description, String price) {
//   return Card(
//     elevation: 4.0,
//     // color: Colors.white,
//     child: Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start, // Align all text to the left
//         children: <Widget>[
//           // Image at the top
//           Expanded(
//             flex: 3, // Give more space to the image
//             child: Center(
//               child: Image.asset(
//                 imagePath,
//                 fit: BoxFit.contain,
//                 width: 150,
//                 height: 150, // Adjust based on the size you want
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           // Title
//           Text(
//             title,
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             maxLines: 1, // Limit title to 1 line
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.left, // Align to the left
//           ),
//           const SizedBox(height: 5),
//           // Description
//           Text(
//             description,
//             style: TextStyle(fontSize: 12, color: Colors.grey[600]),
//             maxLines: 2, // Limit description to 2 lines
//             overflow: TextOverflow.ellipsis,
//             textAlign: TextAlign.left, // Align to the left
//           ),
//           const SizedBox(height: 5),
//           // Price
//           Text(
//             price,
//             style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.green),
//             textAlign: TextAlign.left, // Align price to the left
//           ),
//         ],
//       ),
//     ),
//   );
// }

Widget buildGridCard(String imagePath, String title, String description, String price) {
  return Stack(
    children: [
      Card(
        color: const Color.fromARGB(255, 245, 245, 245),
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align all text to the left
            children: <Widget>[
              // Image at the top
              Expanded(
                flex: 3, // Give more space to the image
                child: Center(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                    width: 130,
                    height: 130, // Adjust based on the size you want
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Title
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 1, // Limit title to 1 line
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left, // Align to the left
              ),
              const SizedBox(height: 5),
              // Description
              Text(
                description,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                maxLines: 2, // Limit description to 2 lines
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left, // Align to the left
              ),
              const SizedBox(height: 5),
              // Price
              Text(
                price,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.left, // Align price to the left
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 8.0,
        right: 2.0,
        child: IconButton(
          icon: const Icon(Icons.favorite_border, color: Colors.black54),
          onPressed: () {
            // Handle favorite button press
          },
        ),
      ),
    ],
  );
}

Widget buildGridCardHeart(String imagePath, String title, String description, String price) {
  return Stack(
    children: [
      Card(
        color: const Color.fromARGB(255, 245, 245, 245),
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Align all text to the left
            children: <Widget>[
              // Image at the top
              Expanded(
                flex: 3, // Give more space to the image
                child: Center(
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                    width: 130,
                    height: 130, // Adjust based on the size you want
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Title
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 1, // Limit title to 1 line
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left, // Align to the left
              ),
              const SizedBox(height: 5),
              // Description
              Text(
                description,
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                maxLines: 2, // Limit description to 2 lines
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left, // Align to the left
              ),
              const SizedBox(height: 5),
              // Price
              Text(
                price,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                textAlign: TextAlign.left, // Align price to the left
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 8.0,
        right: 2.0,
        child: IconButton(
          icon: const Icon(Icons.favorite, color: Colors.red),
          onPressed: () {
            // Handle favorite button press
          },
        ),
      ),
    ],
  );
}
}
