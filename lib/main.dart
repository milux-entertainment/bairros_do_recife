import 'package:bairros_do_recife/BairrosSet.dart';
import 'package:bairros_do_recife/bairro.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

void main() {
  runApp(BairrosRecife());
}

class BairrosRecife extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}

class Home extends StatelessWidget {
  List<Bairro> bairros = BairrosSet.getBairros();

  String _appName = "Bairros do Recife";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text(
          _appName, style: TextStyle(color: Colors.grey),),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: (String choice) {
              Bairro bairro = BairrosSet.getBairroFromName(choice);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BairroPage(bairro)),
              );
            },
            itemBuilder: (BuildContext context) {
              return bairros.map((Bairro choice) {
                return PopupMenuItem<String>(
                  value: choice.name,
                  child: Text(choice.name),
                );
              }).toList();
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          _appName.toUpperCase(),
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}


class BairroPage extends StatefulWidget {
  Bairro bairro;

  BairroPage(this.bairro);

  @override
  _BairroPageState createState() => _BairroPageState(bairro);
}

class _BairroPageState extends State<BairroPage> {
  Bairro bairro;
  VideoPlayerController _controllerBairro;
  VideoPlayerController _controllerHelp;

  _BairroPageState(this.bairro);

  @override
  void initState() {
    super.initState();
    _controllerBairro = VideoPlayerController.asset('assets/videos/${bairro.video}');

    _controllerBairro.addListener(() {
      setState(() {});
    });
    _controllerBairro.setLooping(true);
    _controllerBairro.initialize().then((_) => setState(() {}));
    _controllerBairro.play();

    _controllerHelp = VideoPlayerController.asset('assets/videos/${bairro.video}');

    _controllerHelp.addListener(() {
      setState(() {});
    });
    _controllerHelp.setLooping(true);
    _controllerHelp.initialize().then((_) => setState(() {}));
    _controllerHelp.play();
  }

  @override
  void dispose() {
    _controllerBairro.dispose();
    super.dispose();
    _controllerHelp.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bairro.name),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    bairro.name.toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: AspectRatio(
                  aspectRatio: _controllerBairro.value.aspectRatio,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      VideoPlayer(_controllerBairro),
                      _ControlsOverlay(controller: _controllerBairro),
                      VideoProgressIndicator(_controllerBairro, allowScrubbing: true,),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Localização: ',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${bairro.localization}',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                              children: <Widget>[
                                Text(
                                  'Área territorial: ',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${bairro.area}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ]
                          ),
                        ]
                    ),
                    Expanded(
                      child: IconButton(
                        icon: Icon(Icons.help_outline),
                        tooltip: 'Ajuda',
                        onPressed: () {
                          print("Foi!");
                          setState(() {
                            _helpModalBottomSheet(context);
                          });
                        },
                      ),
                    )
                  ]
                ),
              )
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: GestureDetector(
                    child: Image(
                      image: AssetImage('assets/images/${bairro.map}'),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return DetailScreen(bairro);
                      }));
                    },
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

  void _helpModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: AspectRatio(
                aspectRatio: _controllerHelp.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    VideoPlayer(_controllerHelp),
                    _ControlsOverlay(controller: _controllerHelp),
                    VideoProgressIndicator(_controllerHelp, allowScrubbing: true,),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key key, this.controller}) : super(key: key);

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: Duration(milliseconds: 50),
          reverseDuration: Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? SizedBox.shrink()
              : Container(
            color: Colors.black26,
            child: Center(
              child: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 100.0,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}

class DetailScreen extends StatelessWidget {
  Bairro bairro;
  DetailScreen(this.bairro);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageMap',
            child: PhotoView(imageProvider: AssetImage('assets/images/${bairro.map}'))
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

