import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

@RoutePage()
class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final List<types.Message> _messages = [];
  late IO.Socket socket;
  late types.User _user;

  @override
  void initState() {
    super.initState();
    _user = const types.User(id: 'current_user_id');
    connectToServer();
  }

  void connectToServer() {
    socket = IO.io('http://your_server_url', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    socket.connect();

    socket.on('connect', (_) {
      print('Kết nối thành công');
    });

    socket.on('message', (data) {
      setState(() {
        final message = types.TextMessage(
          author: const types.User(id: 'other_user_id'),
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          text: data.toString(),
        );
        _messages.insert(0, message);
      });
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: message.text,
    );

    setState(() {
      _messages.insert(0, textMessage);
    });

    socket.emit('message', message.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tin nhắn'),
      ),
      body: Chat(
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
    );
  }

  @override
  void dispose() {
    socket.disconnect();
    super.dispose();
  }
}
