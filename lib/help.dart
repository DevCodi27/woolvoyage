import 'package:flutter/material.dart';
// import 'package:wool_voyage/Dawood/docs_screen.dart';
// import 'package:wool_voyage/Dawood/videos_screen.dart';
// import 'package:wool_voyage/Dawood/policies_screen.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wool Voyage Community',
      
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Wool Voyage Community'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Chat'),
              Tab(text: 'Docs'),
              Tab(text: 'Videos'),
              Tab(text: 'Policies'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ChatScreen(),
            // DocsScreen(title: 'Document',),
            // VideosScreen(),
            // PoliciesScreen(),
          ],
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _chatMessages = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _chatMessages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_chatMessages[index]),
                );
              },
            ),
          ),
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration:  InputDecoration(
                border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),

                hintText: 'Type a message...',
                
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              _sendMessage();
            },
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _chatMessages.add('User: $message');
        // Implement bot response or query handling here
        _chatMessages.add('Bot: Typing');
        _messageController.clear();
      });
    }
  }
}