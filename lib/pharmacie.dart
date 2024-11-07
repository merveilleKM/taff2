import 'package:flutter/material.dart';

class Pharmacie extends StatefulWidget {
  const Pharmacie({super.key});

  @override
  State<Pharmacie> createState() => _PharmacieState();
}

class _PharmacieState extends State<Pharmacie> {
  List<Map<String, dynamic>> proche = [
    {
      'nom' : 'pharmacie des Capucines',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
    {
      'nom' : 'pharmacie Mindili',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
    {
      'nom' : 'pharmacie La jouvence',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
    {
      'nom' : 'pharmacie L\'ekounou ',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
  ];

  List<Map<String, dynamic>> garde = [

    {
      'nom' : 'pharmacie Mindili',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
    {
      'nom' : 'pharmacie La jouvence',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
    {
      'nom' : 'pharmacie L\'ekounou ',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
    {
      'nom' : 'pharmacie des Capucines',
      'ville' : 'Yaounde',
      'region' : 'centre'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Pour réduire la largeur du Row
                  children: [
                    Text("Pharmacare", style: TextStyle(color: Colors.white),),
                    SizedBox(width: 8),
                    Image.asset('assets/img/pharmacy.png', height: 30, width: 30, color: Colors.white,),
                  ],
                ),
              ),
            ),
          ],
        ),

        leading: IconButton(icon: Icon(Icons.menu, color: Colors.white), // Icône blanche pour le Drawer
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),

      ),
      drawer: Drawer(
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Rechercher medicaments ou pharmacies",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    prefixIcon: Icon(Icons.search, color: Colors.green,),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pharmacie Proches', style: TextStyle(color: Colors.green, fontSize: 30),),
                    Text('Plus >', style: TextStyle(color: Colors.green),),
                  ],
                ),
              ),

              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    height: 200,
                    child: ListView.builder(
                      itemCount: proche.length,
                        itemBuilder: (context, index){
                        return ListTile(
                          title: Text(proche[index]['nom'], style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Text(proche[index]['ville']),
                          trailing: Text(proche[index]['region']),
                        );
                        }
                    ),
                  ),

                  SizedBox(height: 10,),

                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pharmacie de garde', style: TextStyle(color: Colors.green, fontSize: 30),),
                        Text('Plus >', style: TextStyle(color: Colors.green),),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(4),
                    height: 200,
                    child: ListView.builder(
                        itemCount: garde.length,
                        itemBuilder: (context, index){
                          return ListTile(
                            title: Text(garde[index]['nom'], style: TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text(garde[index]['ville']),
                            trailing: Text(garde[index]['region']),
                          );
                        }
                    ),
                  ),

                ],
              )

            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Pharmacies", ),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications",),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile",)
          ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        selectedLabelStyle: TextStyle(color: Colors.green),
        unselectedLabelStyle: TextStyle(color: Colors.black54),
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

    );
  }
}
