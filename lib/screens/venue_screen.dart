import 'package:flutter/material.dart';
import 'package:t20_yt/utility/app_colors.dart';
import 'package:t20_yt/utility/data_api.dart';
import '../models/venue.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/venue_widget.dart';

class VenueScreen extends StatelessWidget {
  const VenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(titleText: 'Venues'),
        body: BackgroundWidget(
            padding: const EdgeInsets.all(10),
            child: FutureBuilder<List<Venue>>(
              future: DataApi.getAllVenues(context),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<Venue> venues = snapshot.data;

                  return ListView.builder(
                      itemCount: venues.length,
                      itemBuilder: (context, index) {
                        return VenueWidget(venue: venues[index]);
                      });
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )));
  }
}
