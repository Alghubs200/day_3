import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppBarDemo extends StatefulWidget {
  AppBarDemo({super.key});

  @override
  State<AppBarDemo> createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> {
  final List<Widget> _items = [
    Container(
      alignment: Alignment.center,
      color: Colors.yellow,
      child: Text('Home'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text('Search'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.black,
      child: Text('Contact'),
    ),
    Container(
      alignment: Alignment.center,
      color: Colors.purple,
      child: Text('Call'),
    )
  ];
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 30,
          // leadingWidth: 1,
          backgroundColor: Colors.green,
          title: Text(
            'App Bar',
          ),
          actions: [
            IconButton(
              onPressed: () {
                print('pressed');
              },
              icon: Icon(Icons.search),
              splashColor: Colors.amber,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_rounded),
              highlightColor: Colors.purple,
            )
          ],
        ),
        drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'Alghubs',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  accountEmail: Text(
                    'alghubs@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.purple[900],
                    child: Text('A'),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.yellow,
                  ),
                  title: Text('All Mails'),
                  onTap: () => Navigator.of(context).pop(),
                ),
                Divider(
                  color: Colors.pink,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(Icons.send_outlined, color: Colors.yellow),
                  title: Text('Sent Mails'),
                  onTap: () => Navigator.of(context).pop(),
                ),
                Divider(
                  color: Colors.pink,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(Icons.people_alt, color: Colors.yellow),
                  title: Text('Social'),
                  onTap: () => Navigator.of(context).pop(),
                ),
                Divider(
                  color: Colors.pink,
                  thickness: 5,
                ),
                ListTile(
                  leading:
                      Icon(Icons.sports_martial_arts, color: Colors.yellow),
                  title: Text('Spam Mails'),
                  onTap: () => Navigator.of(context).pop(),
                ),
                Divider(
                  color: Colors.pink,
                  thickness: 5,
                ),
                ListTile(
                  leading: Icon(Icons.delete, color: Colors.yellow),
                  title: Text('Trash Mails'),
                  onTap: () => Navigator.of(context).pop(),
                ),
                Divider(
                  color: Colors.pink,
                  thickness: 5,
                ),
              ],
            ),
            backgroundColor: Colors.red),
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.pink,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    // color: Colors.amber,
                  ),
                  label: 'Home',
                  backgroundColor: Colors.yellow),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    // color: Colors.amber,
                  ),
                  label: 'Search',
                  backgroundColor: Colors.green),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.contact_page,
                    // color: Colors.amber,
                  ),
                  label: 'Contact',
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.call,
                    // color: Colors.amber,
                  ),
                  label: 'Call',
                  backgroundColor: Colors.purple),
            ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          tooltip: 'switch off',
          elevation: 22,
          splashColor: Colors.red,
          backgroundColor: Colors.grey,
          child: Icon(Icons.settings_power_rounded),
          onPressed: () {
            print('FAB button pressed');
          },
        ),
        body: _items[_selectedIndex]);
  }
}
