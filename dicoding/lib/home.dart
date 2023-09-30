import 'package:flutter/material.dart';
import 'listview.dart';
import 'exxpand_flexible.dart';
import 'mediaquery1.dart';
import 'mediaquery_layoutbuilder.dart';
import 'responsivepage.dart';
import 'codelab3.dart';
import 'profile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      drawer: const MyDrawer(),

      body: const HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text("Dicoding Academy",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            Container(
              child: Image.asset('images/icon_apk.png',
              width: 150,
                height: 150,
              ),
            ),

            InkWell(
              child: const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: ListTile(
                  textColor: Colors.white,
                  title: Center(child: Text("Materi Codelab")),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CodeLab3())
                );
              },
            ),
            InkWell(
              child: const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: ListTile(
                  textColor: Colors.white,
                  title: Center(child: Text("Materi Expand Flexible")),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ExpandedFlexiblePage())
                );
              },
            ),
            InkWell(
              child: const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: ListTile(
                  textColor: Colors.white,
                  title: Center(child: Text("Materi Listview")),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScrollingScreen())
                );
              },
            ),
            InkWell(
              child: const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: ListTile(
                  textColor: Colors.white,
                  title: Center(child: Text("Materi Mediaquery")),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MediaQuery1())
                );
              },
            ),
            InkWell(
              child: const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: ListTile(
                  textColor: Colors.white,
                  title: Center(child: Text("Materi Mediaquery & Layout Builder")),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LayoutBuilder1())
                );
              },
            ),
            InkWell(
              child: const Card(
                margin: EdgeInsets.all(10.0),
                color: Colors.blue,
                child: ListTile(
                  textColor: Colors.white,
                  title: Center(child: Text("Materi Responsive Page")),
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ResponsivePage())
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Fitroh Fathur Rohman'),
            accountEmail: Text('fathur.rahman12300@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/profile_images.jpg'),
            ) // Ganti dengan gambar profil Anda

          ),
          ListTile(
            leading: const Icon(Icons.home,
            color: Colors.black,
            ),
            title: const Text('Home',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            onTap: () {
              // Tindakan yang akan diambil ketika item "Home" diklik
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle,
            color: Colors.black,),
            title: const Text('Profile',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),
            onTap: () {
              // Tindakan yang akan diambil ketika item "Profile" diklik
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileFathur()));
              // Navigasi ke halaman profil atau lakukan apa yang Anda butuhkan di sini
            },
          ),
          const Divider(),
          ExpansionTile(
            title: const Text("Materi Dicoding Pemula",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            childrenPadding: const EdgeInsets.only(left: 30.0),
            children: [
              ListTile(
                  title: const Text("Materi Codelab3"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const CodeLab3())
                    );
                  }
              ),
              ListTile(
                  title: const Text("Materi Expand&Flexible"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ExpandedFlexiblePage())
                    );
                  }
              ),
              ListTile(
                  title: const Text("Materi Listview"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ScrollingScreen())
                    );
                  }
              ),
              ListTile(
                  title: const Text("Materi Mediaquery"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MediaQuery1())
                    );
                  }
              ),
              ListTile(
                  title: const Text("Materi Mediaquery&Layout Builder"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LayoutBuilder1())
                    );
                  }
              ),
              ListTile(
                  title: const Text("Materi Responsive Page"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const ResponsivePage())
                    );
                  }
              ),
            ],

          ),
          ListTile(
            leading: const Icon(Icons.facebook),
            title: const Text('Facebook'),
            onTap: () {
              // Tindakan yang akan diambil ketika item "Settings" diklik
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileFathur()));
              // Navigasi ke halaman pengaturan atau lakukan apa yang Anda butuhkan di sini
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Logout'),
            onTap: () {
              // Tindakan yang akan diambil ketika item "Logout" diklik
              Navigator.pop(context);
              // Lakukan logout dari aplikasi atau lakukan apa yang Anda butuhkan di sini
            },
          ),

        ],
      ),

    );
  }
}

