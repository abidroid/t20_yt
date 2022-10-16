import 'package:flutter/material.dart';
import 'package:t20_yt/widgets/match_widget.dart';

import '../utility/data_api.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_app_bar.dart';
import '../models/match.dart';


class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(titleText: 'Schedule'),
        body: BackgroundWidget(
          padding: const EdgeInsets.all(10),
          child: FutureBuilder<List<Match>>(
            future: DataApi.getAllMatches(context),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              if( snapshot.hasData){

                List<Match> matches = snapshot.data;

                return ListView.builder(
                    itemCount:  matches.length,
                    itemBuilder: (context, index){

                      return MatchWidget(match: matches[index]);
                });

              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            },
          )
        ));
  }
}
