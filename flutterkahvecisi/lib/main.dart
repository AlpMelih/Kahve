import 'package:flutter/material.dart';
import 'package:flutterkahvecisi/video.dart';



void main() {
  runApp(MaterialApp(
    home: Video(),
  ));
}
class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        body: SafeArea(
          child: Center(
            child: Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: SizedBox(
                                  height: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: Colors.lime,
                    backgroundImage: AssetImage('assets/images/images.jpg'),
                  ),
                  Text(
                    'KAHVE ÇEKİRDEĞİ',
                    style: TextStyle(
                      fontSize: 35,
                      fontFamily: 'Satisfy',
                    ),
                  ),
                  Text("SİZE KAHVE FIŞKIRTMAK İÇİN SABIRSIZLANIYOR"),
                  Padding(
                      padding: EdgeInsets.only(top: 100.0),
                      child: Container(
                          height: 100,
                          width: 100,
                          color: Colors.transparent,
                          child: Expanded(
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 0.0),
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => VideoPlayerScreen(),));

                                  }, child: Icon(Icons.coffee,size: 70,))))),
                ],
              ),
            ),
          ),
        ));
  }
}

