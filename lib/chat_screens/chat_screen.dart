import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late User user;

  @override
  void initState() {
    super.initState();
    user = _auth.currentUser!;
  }

  Future<void> _sendMessage() async {
    if (_controller.text.isNotEmpty) {
      await _firestore.collection('messages').add({
        'text': _controller.text,
        'userId': user.uid,
        'timestamp': FieldValue.serverTimestamp(),
      });
      _controller.clear();
    }
  }

  Future<void> _deleteMessageForMe(DocumentSnapshot doc) async {
    await _firestore.collection('deletedMessages').add({
      'messageId': doc.id,
      'userId': user.uid,
    });
  }

  Future<void> _deleteMessageForEveryone(DocumentSnapshot doc) async {
    await _firestore.collection('messages').doc(doc.id).delete();
  }

  Future<void> _editMessage(DocumentSnapshot doc) async {
    final TextEditingController editController = TextEditingController(text: doc['text']);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Message'),
          content: TextField(
            controller: editController,
            decoration: InputDecoration(hintText: 'Edit your message'),
          ),
          actions: [
            TextButton(
              onPressed: () async {
                await _firestore.collection('messages').doc(doc.id).update({
                  'text': editController.text,
                  'timestamp': FieldValue.serverTimestamp(),
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildMessageItem(DocumentSnapshot doc) {
    var data = doc.data() as Map<String, dynamic>;
    bool isMe = data['userId'] == user.uid;
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: GestureDetector(
        onLongPress: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(Icons.edit),
                    title: Text('Edit'),
                    onTap: () {
                      Navigator.pop(context);
                      _editMessage(doc);
                    },
                  ),
                /*  ListTile(
                    leading: Icon(Icons.delete),
                    title: Text('Delete for me'),
                    onTap: () {
                      Navigator.pop(context);
                      _deleteMessageForMe(doc);
                    },
                  ),*/
                  if (isMe)
                    ListTile(
                      leading: Icon(Icons.delete_forever),
                      title: Text('Delete for everyone'),
                      onTap: () {
                        Navigator.pop(context);
                        _deleteMessageForEveryone(doc);
                      },
                    ),
                ],
              );
            },
          );
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: isMe ? Colors.blue[100] : Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                'User: ${data['userId'].substring(0, 5)}...', // Anonymize userId
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 5),
              Text(
                data['text'] ?? '',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                (data['timestamp'] as Timestamp?) != null
                    ? (data['timestamp'] as Timestamp).toDate().toString()
                    : 'Time not available',
                style: TextStyle(fontSize: 12, color: Colors.black38),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat')),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: _firestore
                  .collection('messages')
                  .orderBy('timestamp')
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                return ListView(
                  children: snapshot.data!.docs.map((doc) {
                    var data = doc.data() as Map<String, dynamic>?;

                    if (data == null || !data.containsKey('text')) {
                      return ListTile(
                        title: Text('Message deleted or invalid'),
                      );
                    }

                    return FutureBuilder(
                      future: _firestore
                          .collection('deletedMessages')
                          .where('messageId', isEqualTo: doc.id)
                          .where('userId', isEqualTo: user.uid)
                          .get(),
                      builder: (context, AsyncSnapshot<QuerySnapshot> deletedSnapshot) {
                        if (deletedSnapshot.hasData &&
                            deletedSnapshot.data!.docs.isNotEmpty) {
                          return Container(); // Message is deleted for this user
                        }
                        return _buildMessageItem(doc);
                      },
                    );
                  }).toList(),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: 'Enter your message',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
