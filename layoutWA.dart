import 'package:flutter/material.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Community Tab', style: TextStyle(fontSize: 18, color: Colors.white))),
    _ChatsTab(),
    _StatusTab(),
    _CallsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black, // Header warna hitam
        title: const Text('WhatsApp', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt, color: Colors.white)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search, color: Colors.white)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert, color: Colors.white)),
        ],
      ),
      body: Container(
        color: Colors.black, // Background body warna hitam
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Warna hitam untuk BottomNavigationBar
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: const Color(0xFF25D366), // Hijau untuk item terpilih
        unselectedItemColor: const Color.fromARGB(255, 243, 241, 241), // Abu-abu untuk item tidak terpilih
        type: BottomNavigationBarType.fixed, // Menghindari background abu
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Komunitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
      floatingActionButton: _currentIndex == 1
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: const Color(0xFF25D366),
              child: const Icon(Icons.message, color: Colors.white),
            )
          : null,
    );
  }
}

class _ChatsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/WhatsApp_logo.svg/2048px-WhatsApp_logo.svg.png'),
          ),
          title: const Text('bububbss', style: TextStyle(color: Colors.white)),
          subtitle: const Text('halawww', style: TextStyle(color: Colors.grey)),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Hari ini', style: TextStyle(color: Colors.grey)),
              Icon(Icons.push_pin, color: Colors.white),
            ],
          ),
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: const Text('Lala (anda)', style: TextStyle(color: Colors.white)),
          subtitle: const Text('astaga', style: TextStyle(color: Colors.grey)),
          trailing: const Text('kemarin', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }
}

class _StatusTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: const [
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 0, 0, 0),
                child: Icon(Icons.person, color: Colors.white),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Icon(Icons.add_circle, color: Colors.green),
              ),
            ],
          ),
          title: const Text('Status saya', style: TextStyle(color: Colors.white)),
          subtitle: const Text('Klik untuk menambahkan status', style: TextStyle(color: Colors.grey)),
        ),
      ],
    );
  }
}

class _CallsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(Icons.phone, color: Colors.white),
          ),
          title: const Text('bububs', style: TextStyle(color: Colors.white)),
          subtitle: Row(
            children: const [
              Icon(Icons.call_received, color: Colors.green, size: 16),
              SizedBox(width: 4),
              Text('Hari ini, 23:20', style: TextStyle(color: Colors.grey)),
            ],
          ),
          trailing: const Icon(Icons.phone, color: Colors.white),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsAppScreen(),
  ));
}