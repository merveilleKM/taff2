import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage GLI', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              Card(
                elevation: 8,
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                    leading: Image.asset('assets/img/guide.png', height: 55, width: 55,),
                    title: const Text("Guide d'utilisation"),
                  ),
                ),
              ),
        
              const SizedBox(height: 40,),
        
              const Card(
                elevation: 8,
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                    leading: Icon(Icons.list_alt, size: 55,),
                    title: Text('Aliments'),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Card(
                elevation: 8,
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                    leading: Image.asset('assets/img/idea.png', height: 55, width: 55,),
                    title: const Text('Conseils'),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              const Card(
                elevation: 8,
                color: Colors.greenAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                    leading: Icon(Icons.stars_rounded, color: CupertinoColors.systemBlue, size: 55,),
                    title: Text('Favoris'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}
