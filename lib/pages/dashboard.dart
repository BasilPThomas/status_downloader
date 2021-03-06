import 'package:flutter/material.dart';
import 'package:status_downloader/pages/photos.dart';
// import 'package:status_downloader/pages/videos.dart';
// import 'package:firebase_admob/firebase_admob.dart';

const String testDevice = '';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Color(0xffe8e8e8),
      child: ListView(
          children: [
            //Welcome and Balance Info
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.purple[800],
                        Colors.purple[700],
                        Colors.purple[600],
                        Colors.purple[500],
                        Colors.purple[400],
                        Colors.purple[800],
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset.zero,
                      blurRadius: 3.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: InkWell(
                  onTap: (){
                    // createInterstitialAd()
                    //   ..load()
                    //   ..show();
                    Navigator.of(context).push( MaterialPageRoute(
                      builder: (BuildContext context) =>Photos(),
                    ));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Photo Status",style: TextStyle(
                        fontSize:24.0,
                        color:Colors.white,
                      )),
                      Text("Click here to view all photo status.",style: TextStyle(
                        fontSize:17.0,
                        color:Colors.white70,
                      )),

                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            //   child: Container(
            //     padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //           colors: [
            //             Colors.teal[800],
            //             Colors.teal[700],
            //             Colors.teal[600],
            //             Colors.teal[500],
            //             Colors.teal[400],
            //             Colors.teal[800],
            //           ]
            //       ),
            //       borderRadius: BorderRadius.all(Radius.circular(3)),
            //       boxShadow: [
            //         BoxShadow(
            //           color: Colors.grey,
            //           offset: Offset.zero,
            //           blurRadius: 3.0,
            //           spreadRadius: 0.0,
            //         ),
            //       ],
            //     ),
            //     child: InkWell(
            //       onTap: (){
            //         createInterstitialAd()
            //           ..load()
            //           ..show();
            //         Navigator.of(context).push( MaterialPageRoute(
            //           builder: (BuildContext context) =>VideoListView(),
            //         ));
            //       },
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text("Videos Status",style: TextStyle(
            //             fontSize:24.0,
            //             color:Colors.white,
            //           )),
            //           Text("Click here to view all videos status.",style: TextStyle(
            //             fontSize:17.0,
            //             color:Colors.white70,
            //           )),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Colors.indigo[800],
                        Colors.indigo[700],
                        Colors.indigo[600],
                        Colors.indigo[500],
                        Colors.indigo[600],
                        Colors.indigo[800],
                      ]
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset.zero,
                      blurRadius: 3.0,
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("File Manager > Downloaded Status ",style: TextStyle(
                      fontSize:20.0,
                      color:Colors.white,
                    )),
                    Padding(padding: EdgeInsets.all(5.0),),
                    Text("All photos and videos will be saved in Downloaded Status Folder.",style: TextStyle(
                      fontSize:17.0,
                      color:Colors.white70,
                    )),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}