// ignore_for_file: prefer_const_constructors

import '../main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeuPerfilWidget extends StatefulWidget {
  const MeuPerfilWidget({Key key}) : super(key: key);

  @override
  _MeuPerfilWidgetState createState() => _MeuPerfilWidgetState();
}

class _MeuPerfilWidgetState extends State<MeuPerfilWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
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
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.1),
        child: AppBar(
          shadowColor: Colors.transparent,
          backgroundColor: Color.fromARGB(0, 23, 0, 255),
          automaticallyImplyLeading: false,
          title: Text(
            'Meu Perfil',
            style: GoogleFonts.ibmPlexSans(
                color: Colors.white, fontSize: 31, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            }),
          actions: [],
          centerTitle: true,
          elevation: 2,
        ),
      ),
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xFFF49F0A),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.55,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Color(0x4E000000),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-0.7, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nome: Pedro Obrás\n',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Outras Informações:\n  Idade: 30 anos',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 10, 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.width * 0.25,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          '../../assets/petrohelp.png',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Center(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.55,
                  decoration: BoxDecoration(
                    color: Color(0xA0C4C4C4),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: ListView(
                      clipBehavior: Clip.hardEdge,
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          child:Text( '+ Adicionar Avaliação',style: GoogleFonts.ibmPlexSans(
                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
                          style: TextButton.styleFrom(minimumSize: Size(130,80),backgroundColor:Color(0xFFD0D0D0),shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8,16,8,8),
                          child: ListTile(
                            title: Text(
                              'Lorem ipsum dolor...',
                            ),
                            subtitle: Text(
                              'Lorem ipsum dolor...',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20,
                            ),
                            tileColor: Color(0xA0C4C4C4),
                            dense: false,
                            contentPadding:
                                EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            title: Text(
                              'Lorem ipsum dolor...',
                            ),
                            subtitle: Text(
                              'Lorem ipsum dolor...',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20,
                            ),
                            tileColor: Color(0xA0C4C4C4),
                            dense: false,
                            contentPadding:
                                EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            title: Text(
                              'Lorem ipsum dolor...',
                            ),
                            subtitle: Text(
                              'Lorem ipsum dolor...',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20,
                            ),
                            tileColor: Color(0xA0C4C4C4),
                            dense: false,
                            contentPadding:
                                EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            title: Text(
                              'Lorem ipsum dolor...',
                            ),
                            subtitle: Text(
                              'Lorem ipsum dolor...',
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xFF303030),
                              size: 20,
                            ),
                            tileColor: Color(0xA0C4C4C4),
                            dense: false,
                            contentPadding:
                                EdgeInsets.all(10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),);
  }
}
