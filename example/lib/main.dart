import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:package_assets/assets_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,statusBarColor: Colors.green
        ),
        bottomOpacity: 77,
        backgroundColor: PackageColors.brightSun,
        title: Text("Package Assets"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 12,
          children: <Widget>[
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.green
              ),
              child:  Text(
                'You have pushed  ${PackageIcons().bell}',
              ),
            ),

            Image.asset(PackageImages.paylovBorrov, fit: BoxFit.contain, package: "package_assets",),

            Image.asset(PackageWebp.insuranceBlur, fit: BoxFit.contain, package: "package_assets"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}


class PackageBundle extends AssetBundle{
  @override
  Future<ByteData> load(String key) {
    throw UnimplementedError();
  }

}