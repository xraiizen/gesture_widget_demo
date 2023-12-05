// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

// Point d'entrée principal de l'application.
void main() => runApp(const MyApp());

// Le widget racine de l'application.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp est le widget qui englobe toute l'application Flutter.
    return const MaterialApp(
      title: 'Flutter Gesture Demo',
      home: GestureDemo(),
    );
  }
}

// Écran principal de l'application.
class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});

  @override
  _GestureDemoState createState() => _GestureDemoState();
}

// State pour GestureDemo.
class _GestureDemoState extends State<GestureDemo> {
  // Texte à afficher qui change en fonction du geste détecté.
  String _gestureText = 'Pas de geste détecté';

  // Méthode pour mettre à jour le texte en fonction du geste.
  void _updateGestureText(String text) {
    setState(() {
      _gestureText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold fournit la structure de base de l'écran de l'application.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Gesture Demo'),
      ),
      // Le corps de l'application.
      body: Center(
        // GestureDetector est le widget qui détecte les gestes.
        child: GestureDetector(
          // Détecte un tap simple.
          onTap: () => _updateGestureText('Tap détecté'),
          // Détecte un double tap.
          onDoubleTap: () => _updateGestureText('Double Tap détecté'),
          // Détecte un appui long.
          onLongPress: () => _updateGestureText('Long Press détecté'),
          // Conteneur pour afficher le texte.
          child: Container(
            padding: const EdgeInsets.all(20.0),
            color: Colors.amber,
            child: Text(_gestureText),
          ),
        ),
      ),
    );
  }
}
