import 'package:cabproject/screens/search_page.dart';
import 'package:cabproject/screens/trash_page.dart';
import 'package:flutter/material.dart';

import '../utils/promo_card.dart';
import '../screens/profile_page.dart';
import '../utils/service_item.dart';
import '../widgets/past_booking_card.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // List of pages to show
  final List<Widget> _pages = [
    const HomeContent(), // This will be your current home content
    const TrashPage(),
    const SearchPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
            backgroundColor: Colors.white,
            color: Colors.grey,
            activeColor: Colors.orange,
            tabBackgroundColor: Colors.orange.withOpacity(0.1),
            gap: 8,
            padding: const EdgeInsets.all(16),
            iconSize: 24,
            tabs: const [
              GButton(
                icon: Icons.home_filled,
                text: 'Home',
                iconSize: 28,
              ),
              GButton(
                icon: Icons.delete_outline,
                text: 'Trash',
                iconSize: 28,
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
                iconSize: 28,
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
                iconSize: 28,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}

// Move your current home content to a separate widget
class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Location Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on, color: Colors.orange),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Current location',
                              style: TextStyle(color: Colors.grey[600])),
                          const Text('Jl. Soekarno Hatta 15A...',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Badge(
                      label: const Text('2', style: TextStyle(color: Colors.white)),
                      backgroundColor: Colors.red,
                      child: const Icon(Icons.notifications_outlined,size: 30,  ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Search Bar
              Container(
                padding: const EdgeInsets.all(26),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.white),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          decoration: const InputDecoration(
                            
                            hintText: 'Enter Your Location',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 8),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text('Now >',
                          style: TextStyle(color: Colors.orange)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Services Section
              const Text('Services',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ServiceItem(
                    title: 'Bike',
                    imagePath: 'assets/images/bike.png',
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                  ServiceItem(
                    title: 'Cab',
                    imagePath: 'assets/images/cab.png',
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                  ServiceItem(
                    title: 'Parcel',
                    imagePath: 'assets/images/parcel.png',
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                  ServiceItem(
                    title: 'Rental',
                    imagePath: 'assets/images/rental.png',
                    onTap: () {
                      // Add your onTap functionality here
                    },
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Past Bookings Section
              const Text('Past Bookings',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const PastBookingCard(),

              const SizedBox(height: 34),

              // Promos Section
              const Text('Promos',
                  style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: PromoCard(
                      imagePath: 'assets/images/Offer.png',
                      title: '60% OFF',
                      subtitle: 'no cooking',
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: PromoCard(
                      imagePath: 'assets/images/discount.png',
                      title: 'billing',
                      subtitle: 'more on your favorite restaurant',
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
