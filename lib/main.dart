import 'package:flutter/material.dart';

void main() => runApp(
  MyApp()
);



class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Hello Flutter!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:  Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.network(
              'https://loremflickr.com/g/320/240/paris',
              fit: BoxFit.fill,
            ),
        const ListTile(
          title: Text('Foto con animación Hero'),
          subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur'),
        ),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: const Text('VER MÁS'),textColor: Colors.red,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute()
                )
                );
              },
            ),
          ],
        ),
      ],
    ),
    ), 
    );
  }
}


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,

        title: Text("Details page"),

      ),
      body: Center(
        child: Image.network(
        'https://loremflickr.com/g/320/240/paris',
        fit: BoxFit.fill,
      ),
      ),
    );
  }
}



/*import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(  
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage(title: 'Botones'),

      home: Scaffold(
        appBar: AppBar(
          title: Text('Botones'),
        ),
        body: GridView.count(
          crossAxisCount: 1,
          //childAspectRatio: 4 / 3,
        children: <Widget>[
          btnone(
            child:RaisedButton(
              child:Text('Puchame!'),
                onPressed: () {
                  print('Me puchasteeeee!!!');
                },
            )
          ),
             btnone(
            child:RaisedButton(
              child:Text('Puchame!'),
                onPressed: () {
                  print('Me puchasteeeee!!!');
                },
                color: Colors.amber,
                textColor: Colors.white,
            )
          ),
             btnone(
            child:RaisedButton(
              child:Text('Puchame!'),
            ) ,
           
          ),
            btnone(
            child:FlatButton(
              //child:Text('Puchame!'),
                onPressed: () {
                  //print('Me puchasteeeee!!!');
                },
                child: Text('Aprieta!'),
                //color: Colors.pink,
            )
          ),
           btnone(
            child:FlatButton(
              //child:Text('Puchame!'),
                onPressed: () {
                  //print('Me puchasteeeee!!!');
                },
                child: Text('Aprieta!'),
                color: Colors.green,
                textColor: Colors.white,
            )
          ), btnone(
            child:FlatButton(
              //child:Text('Puchame!'),
                onPressed: () {
                  //print('Me puchasteeeee!!!');
                },
                child: Text('Aprieta!'),
                //color: Colors.pink,
            )
          ),
        ])//cree la clase btnone porue quiero mas tarjetitas
        )

    );
  }
}

class btnone extends StatelessWidget {

  final Widget child;

  const btnone({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.2),
       child: Column(
          mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            this.child,
            SizedBox(height: 10),
            Text('Descripcion de una imagen creo ', textAlign: TextAlign.center,)
    ],
    )
    )
    );
  }
}
*/


/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

/*class _MyHomePageState extends State<MyHomePage> {
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
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );*/

  //}
}*/
