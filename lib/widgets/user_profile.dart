import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Tittle'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const _UserInfo(),
            const SizedBox(
              height: 30,
            ),
            Menu()
          ],
        ),
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: const Column(
        children: [
          SizedBox(height: 20),
          _Avatar(),
          SizedBox(height: 30),
          Text(
            'Name Surname',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Phone number',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          Text(
            '@my_nickname',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
    );
  }
}

class MenuRowData {
  const MenuRowData({required this.title, required this.icon});

  final String title;
  final IconData icon;
}

class InfoRow extends StatelessWidget {
  const InfoRow({super.key, required this.info});
  final MenuRowData info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(info.icon),
          const SizedBox(width: 15),
          Expanded(child: Text(info.title)),
          const Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu({super.key});

  final List<MenuRowData> menuRow = [
    const MenuRowData(
      title: 'Favorite',
      icon: Icons.favorite,
    ),
    const MenuRowData(title: 'Calls', icon: Icons.call),
    const MenuRowData(title: 'Gadgets', icon: Icons.computer),
    const MenuRowData(title: 'Folder with chats', icon: Icons.folder),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child:
          Column(children: menuRow.map((info) => InfoRow(info: info)).toList()),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar();

  @override
  Widget build(BuildContext context) {
    return Container(width: 150, height: 150, child: const Placeholder());
  }
}
