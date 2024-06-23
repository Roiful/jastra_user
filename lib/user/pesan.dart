import 'package:flutter/material.dart';

class Pesan extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Pop halaman chat
          },
        ),
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://drive.google.com/uc?id=1uaufhX5ePKLOevVGuT_5Hk0hCWllPCPE'),
              radius: 20,
              backgroundColor: Colors.transparent, // Radius gambar bulat
            ),
            SizedBox(width: 16), // Jarak antara gambar dan teks 'Chat'
            Text('Chat'),
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[300], // Warna latar belakang abu-abu
        child: Column(
          children: <Widget>[
            Expanded(
              // StreamBuilder replaced with a ListView.builder using dummy data
              child: ListView.builder(
                itemCount: 3, // Dummy item count
                itemBuilder: (ctx, index) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: MessageBubble(
                    '--------------------', // Consistent dummy message text
                    index % 2 == 0, // Alternating isMe value for demonstration
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 8.0,
              ), // Sesuaikan padding sesuai kebutuhan
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 60.0,
                      decoration: BoxDecoration(
                        color:
                            Colors.orange[300], // Mengubah warna latar belakang
                      ),
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.white),
                            onPressed: () {
                              // Add functionality for file sending here
                              print('Add file button pressed');
                            },
                          ),
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors
                                    .white, // Mengubah warna latar belakang input field
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: TextField(
                                  controller: _controller,
                                  maxLines:
                                      null, // Allow the TextField to expand vertically
                                  decoration: InputDecoration(
                                    hintText: 'Kirim Pesan',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.send, color: Colors.white),
                            onPressed: () {
                              // Dummy send button functionality
                              print('Message sent: ${_controller.text}');
                              _controller.clear();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  MessageBubble(this.message, this.isMe);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: isMe ? Color.fromARGB(210, 226, 129, 10) : Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.black, // Warna border hitam
              width: 1.0, // Ketebalan border
            ),
          ),
          width: 140,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          margin: EdgeInsets.only(
            top: 8.0, // Menambahkan jarak di atas bubble chat
            bottom: 4.0, // Menambahkan jarak di bawah bubble chat
            left: isMe ? 8.0 : 0.0, // Menyesuaikan jarak kiri jika isMe true
            right: isMe ? 0.0 : 8.0, // Menyesuaikan jarak kanan jika isMe false
          ),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message,
                style: TextStyle(
                  color: isMe
                      ? const Color.fromARGB(255, 44, 22, 22)
                      : Colors.black,
                ),
                textAlign: isMe ? TextAlign.end : TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
