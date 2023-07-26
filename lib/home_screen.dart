import 'package:flutter/material.dart';
import 'package:home_screen/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = "home_screen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Row(
              children: const [
                Text('WhatsApp'),
              ],
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.groups  ),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                )
              ],
              indicatorColor: Colors.white,
            ),
            actions: [
              const Icon(Icons.camera_alt_outlined),
              const SizedBox(
                width: 20,
              ),
              const Icon(Icons.search),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                        const PopupMenuItem(child: Text('New group')),
                        const PopupMenuItem(child: Text('New broadcast')),
                        const PopupMenuItem(child: Text('Linked devices')),
                        const PopupMenuItem(child: Text('Starred messages')),
                        const PopupMenuItem(child: Text('Setting'))
                      ])
            ],
          ),
          body: TabBarView(children: [
            const Text('Groups'),
            //chats
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/2.jpg'),
                  ),
                  title: Text('MD Riad'),
                  subtitle: Text('What are you doing.??'),
                  trailing: Text('1:27 AM'),
                );
              },
            ),
            //status
            ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('images/3.png'),
                  ),
                  title: Text('MY status'),
                  subtitle: Text('Tap to add status update'),
                );
              },
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('images/4.jpg'),
                    ),
                    title: Text('Sultan koshai'),
                    subtitle: Text('You missed a call'),
                    trailing: Icon(Icons.call));
              },
            ),
          ])),
    );
  }
}
