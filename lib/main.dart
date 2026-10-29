import 'package:flutter/material.dart';

// Point de départ : Flutter affiche le widget MyApp.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mon premier projet Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

// StatefulWidget permet de conserver une valeur qui change : le compteur.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    // setState demande à Flutter d'actualiser l'écran après le changement.
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Mon premier projet Flutter'),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.phone_android, size: 56),
                const SizedBox(height: 20),
                Text(
                  'Bienvenue !',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 12),
                const Text(
                  'Kalonji Kashalala Vainqueur',
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'Cours de programmation mobile',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                const Text('Nombre de clics sur le bouton + :'),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Ajouter un clic',
        child: const Icon(Icons.add),
      ),
    );
  }
}
