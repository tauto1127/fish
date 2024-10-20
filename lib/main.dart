import 'package:fish_hackathon/view/navi_view.dart';
import 'package:fish_hackathon/view/purpose_exist.dart';
import 'package:fish_hackathon/view/purpose_none_exist/purpose_none_exist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routemaster/routemaster.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

PreferredSizeWidget MirasutaAppBar = AppBar(
  bottom: const PreferredSize(preferredSize: Size(100, 0.1), child: Divider()),
  backgroundColor: Colors.white,
  title: Padding(
    padding: const EdgeInsets.only(top: 10),
    child: SvgPicture.asset(
      //'assets/image/MIRASUTA_logo.svg',
      defaultTargetPlatform == TargetPlatform.android ? 'assets/image/MIRASUTA_logo.svg' : 'image/MIRASUTA_logo.svg',
      height: 50,
    ),
  ),
  centerTitle: true,
);

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple, background: Colors.white, surface: Colors.white),
        useMaterial3: true,
      ),
      routerDelegate: RoutemasterDelegate(
          routesBuilder: (context) => RouteMap(
                routes: {
                  '/': (_) => const MaterialPage<void>(child: MyHomePage(title: 'Flutter Demo Home')),
                  '/purpose_exist': (_) => const MaterialPage<void>(child: PurposeExist()),
                  '/purpose_none_exist': (_) => MaterialPage<void>(child: PurposeNoneExist()),
                  '/navi': (_) => const MaterialPage<void>(child: NaviView())
                },
              )),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: MirasutaAppBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "公立はこだて未来大学へようこそ！\nあなたの目的を教えてください",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
              onPressed: () {
                Routemaster.of(context).push('/purpose_exist');
              },
              child: _buttonChild("○○に行きたい！", "目的地を自分で設定できるモードです"),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                Routemaster.of(context).push('/purpose_none_exist');
              },
              child: _buttonChild("未来大を歩きたい！", "未来大生おすすめの場所に案内するモードです"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonChild(String mainText, String subText) {
    return Container(
      width: 320,
      height: 130,
      decoration: BoxDecoration(
        color: Color.fromRGBO(254, 238, 172, 24),
        border: Border.all(),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            mainText,
            style: const TextStyle(fontSize: 30, height: 2.5),
          ),
          Text(subText),
        ],
      ),
    );
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }
}
