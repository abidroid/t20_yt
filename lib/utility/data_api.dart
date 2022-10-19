import 'dart:convert';

import 'package:flutter/material.dart';
import '../models/history.dart';
import '../models/match.dart';
import '../models/team.dart';
import '../models/venue.dart';
class DataApi
{
  static Future<List<Match>> getAllMatches( BuildContext context ) async
  {
     var matches = <Match>[];

     var assetBundle = DefaultAssetBundle.of(context);
     var data = await assetBundle.loadString('assets/data/ttwenty.json');
     var jsonData = json.decode( data );
     var jsonSchedule = jsonData['schedule'];

     for( var jsonMatch in jsonSchedule){
       Match match = Match.fromJSON(jsonMatch);
       matches.add(match);
     }

     return matches;
  }

  static Future<List<Venue>> getAllVenues(BuildContext context) async{
    var venues = <Venue>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode( data );

    var jsonVenues = jsonData['venues'];

    for( var jsonVenue in jsonVenues){
      Venue venue = Venue.fromJSON(jsonVenue);
      venues.add(venue);
    }

    return venues;
  }

  static Future<List<History>> getAllHistory( BuildContext context) async{
    var historyList = <History>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode( data );

    var jsonHistory = jsonData['history'];

    for( var mapHistory in jsonHistory){

      History history = History.fromJSON(mapHistory);
      historyList.add(history);
    }

    return historyList;
  }

  static Future<List<Team>> getAllTeams(BuildContext context) async{

    var teams = <Team>[];
    var assetBundle = DefaultAssetBundle.of(context);
    var data = await assetBundle.loadString('assets/data/ttwenty.json');
    var jsonData = json.decode( data );

    var jsonTeams = jsonData['teams'];

    for( var jsonTeam in jsonTeams){

      Team team = Team.fromJSON(jsonTeam);
      teams.add(team);
    }

    return teams;
  }
}

















