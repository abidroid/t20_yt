import 'package:flutter/material.dart';
import 'package:t20_yt/utility/app_colors.dart';

import '../models/venue.dart';

class VenueWidget extends StatelessWidget {
  final Venue venue;
  const VenueWidget({Key? key, required this.venue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        color: AppColors.pinkColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 5)
        ]
      ),

      child: Column(
        children: [
          Container(
            height: 280,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30)
            ),
            child: Stack(
              children: [
                Positioned.fill(child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(venue.image, fit: BoxFit.cover,)),),

                Positioned(
                  left: (MediaQuery.of(context).size.width) / 2 - 95,
                  child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.grey, blurRadius: 5)
                      ]
                    ),

                    child: Text(venue.country, style: const TextStyle(color: Colors.white),),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Text(venue.stadium, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
            fontSize: 18
          ),),
          const SizedBox(height: 8,),
          Text(venue.city, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
              fontSize: 18
          ),),
        ],
      ),
    );
  }
}
