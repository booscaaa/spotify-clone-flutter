import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:spotifyclone/bloc/playlist.dart';
import 'package:spotifyclone/bloc/track.dart';
import 'package:spotifyclone/widget/playlist.dart';
import 'package:spotifyclone/widget/track.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: TextTheme(
                title: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
        ),
        //add yours BLoCs controlles
        blocs: [
          Bloc((i) => TrackController()),
          Bloc((i) => PlaylistController())
        ]);
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TrackController tBLoc = BlocProvider.getBloc<TrackController>();
  final PlaylistController pBLoc = BlocProvider.getBloc<PlaylistController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                stops: [0.004, 0.13],
                begin: Alignment.topCenter,
                end: Alignment.bottomRight,
                colors: [Colors.grey[800], Colors.black])),
        child: SafeArea(
            top: true,
            bottom: false,
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: ListView(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Text(
                              'Não sai dos seus ouvidos',
                              style: Theme.of(context).textTheme.title,
                            )),
                        Container(
                            height: 270,
                            child: StreamBuilder(
                              stream: pBLoc.playlistsLineOne,
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.all(10.0),
                                    itemBuilder: (context, index) {
                                      return PlaylistWidget(
                                          playlist: snapshot.data[index]);
                                    },
                                    itemCount: snapshot.data.length,
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Text(
                              'Escute de novo',
                              style: Theme.of(context).textTheme.title,
                            )),
                        Container(
                            height: 270,
                            child: StreamBuilder(
                              stream: tBLoc.tracks,
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.all(10.0),
                                    itemBuilder: (context, index) {
                                      return TrackWidget(
                                          track: snapshot.data[index]);
                                    },
                                    itemCount: snapshot.data.length,
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            )),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 16, right: 16),
                            child: Text(
                              'Não deixe a musica parar',
                              style: Theme.of(context).textTheme.title,
                            )),
                        Container(
                            height: 270,
                            child: StreamBuilder(
                              stream: pBLoc.playlistsLineTwo,
                              builder: (BuildContext context,
                                  AsyncSnapshot snapshot) {
                                if (snapshot.hasData) {
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    padding: const EdgeInsets.all(10.0),
                                    itemBuilder: (context, index) {
                                      return PlaylistWidget(
                                          playlist: snapshot.data[index]);
                                    },
                                    itemCount: snapshot.data.length,
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            )),
                      ],
                    )
                  ],
                ),
                bottomNavigationBar: BottomNavigationBar(
                  backgroundColor: Colors.grey[900],
                  // onTap: onTabTapped, // new
                  // currentIndex: _currentIndex, // new
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey,

                  items: [
                    new BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      title: Text('Inicio'),
                    ),
                    new BottomNavigationBarItem(
                      icon: Icon(Icons.search),
                      title: Text('Buscar'),
                    ),
                    new BottomNavigationBarItem(
                        icon: Icon(Icons.view_list),
                        title: Text('Sua Biblioteca'))
                  ],
                ))));
  }
}
