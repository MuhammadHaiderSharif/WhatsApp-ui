import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text(
                    'Chats',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Status',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    'Calls',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                  const PopupMenuItem(child: Text('New group')),
                  const PopupMenuItem(child: Text('New broadcast')),
                  const PopupMenuItem(child: Text('Linked devices')),
                  const PopupMenuItem(child: Text('Starred messages')),
                  const PopupMenuItem(child: Text('Settings')),
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              const Text('Camera'),
              ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://variety.com/wp-content/uploads/2023/02/Screen-Shot-2023-02-16-at-10.08.16-AM.png?w=681&h=383&crop=1')),
                    title: Text(
                      'John Wick',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text('Where is my dog?'),
                    trailing: Text('6:30'),
                  );
                },
              ),
              const Text('Status'),
              ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://variety.com/wp-content/uploads/2023/02/Screen-Shot-2023-02-16-at-10.08.16-AM.png?w=681&h=383&crop=1')),
                    title: Text('John Wick'),
                    subtitle: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(
                        Icons.call_received,
                        color: Colors.green,
                      ),
                    ),
                    trailing: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
