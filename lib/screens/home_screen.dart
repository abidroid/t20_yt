import 'package:flutter/material.dart';
import 'package:t20_yt/screens/schedule_screen.dart';
import 'package:t20_yt/screens/team_screen.dart';
import 'package:t20_yt/screens/venue_screen.dart';

import '../widgets/background_widget.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/dashboard_item.dart';
import 'history_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(titleText: 'T20 World Cup'),
        body: BackgroundWidget(
          padding: const EdgeInsets.all(20),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20),
            children: [
              // WET
              // We enjoy typing

              // DRY
              // Don't Repeat Yourself

              DashboardItem(
                imagePath: 'assets/dashboard/schedule.png',
                title: 'Schedule',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const ScheduleScreen();
                  }));
                },
              ),
              DashboardItem(
                imagePath: 'assets/dashboard/venues.png',
                title: 'Venues',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const VenueScreen();
                  }));
                },
              ),
              DashboardItem(
                imagePath: 'assets/dashboard/history.png',
                title: 'History',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const HistoryScreen();
                  }));
                },
              ),
              DashboardItem(
                imagePath: 'assets/dashboard/teams.png',
                title: 'Teams',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const TeamScreen();
                  }));
                },
              ),
              DashboardItem(
                imagePath: 'assets/dashboard/live_score.png',
                title: 'Live Score',
                onTap: () async {
                  const url = 'https://www.t20worldcup.com/home-page';

                  await canLaunchUrl(Uri.parse(url))
                      ? await launchUrl(Uri.parse(url))
                      : throw 'Could not launch $url';
                },
              ),
              DashboardItem(
                imagePath: 'assets/dashboard/highlights.png',
                title: 'Highlights',
                onTap: () async{
                  const url = 'https://www.youtube.com/c/ICC/featured';

                  await canLaunchUrl(Uri.parse(url))
                      ? await launchUrl(Uri.parse(url))
                      : throw 'Could not launch $url';
                },
              ),
            ],
          ),
        ));
  }
}
