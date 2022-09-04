// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../meuperfil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PetroHelp',
      theme: ThemeData(
        textTheme: GoogleFonts.ibmPlexSansTextTheme(),
      ),
      home: const MyHomePage(title: 'PetroHelp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  PageController pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromARGB(255, 51, 148, 128),
            Color.fromARGB(255, 182, 189, 129)
          ])),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Color.fromARGB(0, 23, 0, 255),
          automaticallyImplyLeading: false,
          title: Text(
            'PetroHelp',
            style: GoogleFonts.ibmPlexSans(
                color: Colors.white, fontSize: 31, fontWeight: FontWeight.bold),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          minimum: EdgeInsets.all(16),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFC4C4C4),
                        borderRadius: BorderRadius.circular(100)),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          iconColor: Color.fromARGB(255, 255, 255, 255),
                          border: InputBorder.none,
                          fillColor: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(35, 255, 255, 255),
                        ),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 210,
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(25),
                              child: PageView(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://picsum.photos/seed/341/600',
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.2,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Image.network(
                                    'https://picsum.photos/seed/836/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  Image.network(
                                    'https://picsum.photos/seed/589/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.8),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: SmoothPageIndicator(
                                  controller: pageViewController ??=
                                      PageController(initialPage: 0),
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: ExpandingDotsEffect(
                                    expansionFactor: 2,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 16,
                                    dotHeight: 16,
                                    dotColor: Color(0xFF9E9E9E),
                                    activeDotColor: Colors.white,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MeuPerfilWidget(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF036016),
                                minimumSize: Size(250, 300),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 100,
                                ),
                                Text('Meu perfil',
                                    style: TextStyle(fontSize: 30)),
                              ],
                            )),
                        ElevatedButton(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFF49F0A),
                                minimumSize: Size(250, 300),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.support_agent,
                                  size: 100,
                                ),
                                Text(' Profissionais\nCredenciados',
                                    style: TextStyle(fontSize: 30)),
                              ],
                            )),
                      ]),
                ]),
          ),
        ),
      ),
    );
  }
  /*
  onPressed: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MeuPerfilWidget(),
                                ),
                              );
                            },
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const MeuPerfilWidget(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }*/
}
