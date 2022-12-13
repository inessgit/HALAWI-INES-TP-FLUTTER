import 'package:untitled8/cerveauHistoire.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


CerveauHistoire cerveau= CerveauHistoire();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:PageHistoire() ,
    );
  }
}

class PageHistoire extends StatefulWidget {
  const PageHistoire({Key? key}) : super(key: key);

  @override
  State<PageHistoire> createState() => _PageHistoireState();
}

class _PageHistoireState extends State<PageHistoire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover
          )
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget> [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    cerveau.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      cerveau.nextStory(1);
                    });
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    cerveau.getChoixUn(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.4,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              Expanded(
                flex: 2,
                child: Visibility(
                  visible: cerveau.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        cerveau.nextStory(1);
                      });
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.blue),
                    child: Text(
                      cerveau.getChoixDeux(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.4,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



