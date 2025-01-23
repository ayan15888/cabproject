import 'package:cabproject/screens/chooseVehicle_screen.dart';
import 'package:flutter/material.dart';
import 'saved_location_item.dart';

class LocationSelectionModal {
  static void show(BuildContext context) {
    showModalBottomSheet(

      barrierColor: Colors.black45,
      backgroundColor: Colors.white,  
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(16),
        height: 611,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Services',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!,
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child:
               TextField(
                decoration: InputDecoration(
                  hintText: 'From',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  prefixIcon: const Icon(Icons.circle_rounded, color: Colors.orange,size: 35,),
                  filled: true,
                 fillColor: Colors.grey[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                ),
              ),
            ),
            const SizedBox(height: 12),
              const Padding(
            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
            child: Row(
              children: [
                Icon(Icons.more_vert),
              ],
              
            ),
          ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[400]!,
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Destination',
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  prefixIcon: const Icon(Icons.location_on, color: Colors.orange,size: 35,),
                  filled: true,
                 fillColor: Colors.grey[50],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                ),
              ),
            ),
            const SizedBox(height: 24),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton (
                  
                  style: ElevatedButton.styleFrom(
                    
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  ChooseVehicleScreen(),
                      ),
                    );
                  },
                  child: Text('Search')),
               
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.bookmark_border, color: Colors.orange,size: 25,),
                    const SizedBox(width: 15),
                    const Text('Saved Places'),
                  ],
                ),
                const Icon(Icons.chevron_right),
              ],
            ),
            const SizedBox(height: 16),
           
            

            buildSavedLocationItem(
              'Giga Mall Plaza',
              '8946 Essex St, Sunnyside, In46321',
            ),
            buildSavedLocationItem(
              'Mega Mall Plaza',
              '8946 Essex St, Sunnyside, In46321',
            ),
            buildSavedLocationItem(
              'Mini Park',
              '8946 Essex St, Sunnyside, In46321',
            ),
            buildSavedLocationItem(
              'Big Restaurant',
              '8946 Essex St, Sunnyside, In46321',
            ),
          ],
        ),
      ),
    );
  }
} 