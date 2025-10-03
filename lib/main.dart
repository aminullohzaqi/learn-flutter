import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: WeatherHome()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var daftar_fasilitas = [
      {"icon": Icons.food_bank, "label": "Sarapan"},
      {"icon": Icons.ac_unit, "label": "Penyejuk Ruangan"},
      {"icon": Icons.access_alarm, "label": "Pengingat Bangun"},
      {"icon": Icons.wifi, "label": "Wifi"},
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Vacation App'), centerTitle: true),
        body: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://static.vecteezy.com/system/resources/previews/030/743/828/large_2x/fantastic-tropical-beach-view-summer-landscape-for-exotic-travel-and-vacation-beach-view-tranquil-scenery-relaxing-beach-tropical-landscape-design-with-palm-trees-blue-sea-and-luxury-mood-vibes-photo.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pantai Ancol",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                          ),
                          Text(
                            "Jakarta Utara",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(Icons.star, color: Colors.amber, size: 30),
                    Text("120"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [Icon(Icons.phone), Text("Call")]),
                    Column(children: [Icon(Icons.navigation), Text("Route")]),
                    Column(children: [Icon(Icons.share), Text("Share")]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top:20, bottom: 20),
                child: Text(
                  "Fasilitas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  spacing: 10,
                  children:
                      daftar_fasilitas.map((data) {
                        return Row(
                          children: [
                            Icon(data["icon"] as IconData),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(data["label"] as String),
                            ),
                          ],
                        );
                      }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?',
                textAlign: TextAlign.justify),
              )
            ],
          ),
        ),
      ),
    );
  }
}
