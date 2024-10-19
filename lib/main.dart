import 'package:fish_hackathon/view/navi_view.dart';
import 'package:fish_hackathon/view/purpose_exist.dart';
import 'package:fish_hackathon/view/purpose_none_exist/purpose_none_exist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:routemaster/routemaster.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            background: Colors.white,
            surface: Colors.white),
        useMaterial3: true,
      ),
      routerDelegate: RoutemasterDelegate(
          routesBuilder: (context) => RouteMap(
                routes: {
                  '/': (_) => const MaterialPage<void>(
                      child: MyHomePage(title: 'Flutter Demo Home')),
                  '/purpose_exist': (_) =>
                      const MaterialPage<void>(child: PurposeExist()),
                  '/purpose_none_exist': (_) =>
                      const MaterialPage<void>(child: PurposeNoneExist()),
                  '/navi': (_) => const MaterialPage<void>(child: NaviView())
                },
              )),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

PreferredSizeWidget MirasutaAppBar = AppBar(
  bottom: PreferredSize(preferredSize: Size(100, 0.1), child: Divider()),
  backgroundColor: Colors.white,
  title: Padding(
    padding: const EdgeInsets.only(top: 10),
    child: SvgPicture.asset(
      'image/MIRASUTA_logo.svg',
      width: 50,
      height: 50,
    ),
  ),
  centerTitle: true,
);

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

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

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    const widget = Widget;
    return Scaffold(
      appBar: MirasutaAppBar,
      body: Center(
        child: Column(
          children: <Widget>[
            TextButton(
              onPressed: () {
                Routemaster.of(context).push('/purpose_exist');
              },
              child: const Text('目的地あり'),
            ),
            TextButton(
              onPressed: () {
                Routemaster.of(context).push('/purpose_none_exist');
              },
              child: const Text("目的地なし"),
            ),
          ],
        ),
      ),
    );
  }
}
