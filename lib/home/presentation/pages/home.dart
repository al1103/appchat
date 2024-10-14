import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messenger',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _buildChatsTab(),
          _buildCallsTab(),
          _buildContactsTab(),
          _buildSettingsTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showNewChatDialog,
        child: const Icon(Icons.chat),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_bubble_outline),
            selectedIcon: Icon(Icons.chat_bubble),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(Icons.call_outlined),
            selectedIcon: Icon(Icons.call),
            label: 'Calls',
          ),
          NavigationDestination(
            icon: Icon(Icons.contacts_outlined),
            selectedIcon: Icon(Icons.contacts),
            label: 'Contacts',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            selectedIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  void _showNewChatDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Start a new chat'),
          content: const TextField(
            decoration: InputDecoration(hintText: "Enter user's name"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Start Chat'),
              onPressed: () {
                // TODO: Implement start chat functionality
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildChatsTab() {
    return ListView.builder(
      itemCount: 20, // Replace with actual chat count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage:
                NetworkImage('https://picsum.photos/200?random=$index'),
          ),
          title: Text(
            'User ${index + 1}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Last message ${index + 1}',
            style: TextStyle(color: Colors.grey[600]),
          ),
          trailing: Text(
            '${index + 1}m ago',
            style: TextStyle(color: Colors.grey[400]),
          ),
          onTap: () {
            // Navigate to chat screen
          },
        );
      },
    );
  }

  Widget _buildCallsTab() {
    return ListView.builder(
      itemCount: 10, // Replace with actual call count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: index % 2 == 0 ? Colors.green : Colors.red,
            child: Icon(
              index % 2 == 0 ? Icons.call_received : Icons.call_made,
              color: Colors.white,
            ),
          ),
          title: Text(
            'User ${index + 1}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            index % 2 == 0 ? 'Incoming' : 'Outgoing',
            style: TextStyle(color: Colors.grey[600]),
          ),
          trailing: Text(
            '${index + 1}h ago',
            style: TextStyle(color: Colors.grey[400]),
          ),
          onTap: () {
            // Show call details or initiate call
          },
        );
      },
    );
  }

  Widget _buildContactsTab() {
    return ListView.builder(
      itemCount: 30, // Replace with actual contact count
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.primaries[index % Colors.primaries.length],
            child: Text(
              String.fromCharCode(65 + index),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            'Contact ${index + 1}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Status ${index + 1}',
            style: TextStyle(color: Colors.grey[600]),
          ),
          onTap: () {
            // Show contact details or start chat
          },
        );
      },
    );
  }

  Widget _buildSettingsTab() {
    return ListView(
      children: [
        _buildSettingsTile(Icons.person, 'Account', () {
          // Navigate to account settings
        }),
        _buildSettingsTile(Icons.notifications, 'Notifications', () {
          // Navigate to notification settings
        }),
        _buildSettingsTile(Icons.privacy_tip, 'Privacy', () {
          // Navigate to privacy settings
        }),
        _buildSettingsTile(Icons.help, 'Help', () {
          // Show help options
        }),
        _buildSettingsTile(
          Icons.logout,
          'Logout',
          () {
            // Implement logout functionality
          },
          isDestructive: true,
        ),
      ],
    );
  }

  Widget _buildSettingsTile(
    IconData icon,
    String title,
    VoidCallback onTap, {
    bool isDestructive = false,
  }) {
    return ListTile(
      leading: Icon(icon, color: isDestructive ? Colors.red : null),
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: isDestructive ? Colors.red : null,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
