import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp(MaterialApp(
    home: test(),
  ));
}

class test extends StatefulWidget {
  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  openurl(){
    launch('https://open.spotify.com/artist/06HL4z0CvFAxyc27GXpf02?si=KWfz_wLMQHK2wCUzLi5-Kg&dl_branch=1');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white70,
      appBar: AppBar(
        leading: Container(
          alignment: Alignment.topLeft,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 35,
              )),
        ),
        leadingWidth: 100,
        backgroundColor: Color(0x4DFFFFFF),
        elevation: 0.0,
      ),
      body: Stack(alignment: Alignment.topCenter, children: <Widget>[
        Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'uwu/t1.jpg',
              fit: BoxFit.fitHeight,
            )
            ),
        Container(
          height: double.infinity,
          margin: EdgeInsets.only(top: 215),
          padding: EdgeInsets.only(bottom: 505),
          child: Center(
            child: Text(
              'taylor swift',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'IMFellDWPica',
                fontSize: 45,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.black,
              ),
            ),
          ),
        ),
       Container(
         alignment: Alignment.center,
         margin: EdgeInsets.only(top: 300),
         child:ElevatedButton.icon(onPressed: (){
           openurl();
         },
             style: ElevatedButton.styleFrom(
               alignment: Alignment.center,
               primary: Colors.black,
               padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
             ),
             icon: Icon(
               Icons.music_note,

             ), label: Text('listen now', style: TextStyle(
               fontStyle: FontStyle.italic,
               fontFamily: 'IMFellDWPica',
               fontSize: 20,
               fontWeight: FontWeight.bold,
               letterSpacing: 2,
               color: Colors.white,
             ),))
       )
          ]
    ));
  }
}



class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Color(0x4DFFFFFF),
        elevation: 0.0,
        title: Container(
          padding: EdgeInsets.only(left: 48),
          child: const Text(
            "discography",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontFamily: 'IMFellDWPica',
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Stack(alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'uwu/t2.jpg',
                fit: BoxFit.fitHeight,
              ),),
        Container(
          alignment: Alignment.bottomCenter,
          padding: EdgeInsets.only(top:20),
          margin: EdgeInsets.symmetric(vertical: 40,horizontal: 20),
          color: Color(0x33FFFFFF),
          width: 500,
          height: 550,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: 110,
                margin: EdgeInsets.only(top: 200,),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FourthRoute()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    primary: Colors.black38,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  ),
                  child: Center(
                    child: Text(
                      'evermore',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontFamily: 'IMFellDWPica',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(alignment: Alignment.center,
                width: 110,
                margin: EdgeInsets.only(top: 50,),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FourthRoute()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    primary: Colors.black38,
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical:8),
                  ),
                  child: Center(
                    child: Text(
                      'folklore',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontFamily: 'IMFellDWPica',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back!'),
      ),
    );
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Go back!'),
      ),
    );
  }
}
