import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
          bottom: const TabBar(
            tabs: [
              Icon(Icons.groups),
              Text('Chats'),
              Text('Status'),
              Text('Calls')
            ],
          ),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 15,),
            PopupMenuButton(
              icon: Icon(Icons.search),
              itemBuilder: (context,)=>[
                PopupMenuItem(
                    value: 1,
                    child: TextFormField(
                      decoration: InputDecoration(),
                    ))
              ],
            ),
            SizedBox(width: 10,),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz_outlined),
              itemBuilder: (context,)=>[
                PopupMenuItem(
                    value: 1,
                    child: Text('New group'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('New broadcast'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Linked device'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Settings'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('Long out'),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
    ));
  }
}