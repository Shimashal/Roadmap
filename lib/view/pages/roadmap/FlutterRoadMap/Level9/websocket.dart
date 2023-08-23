import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class WebSocketL9 extends StatefulWidget {
  const WebSocketL9({super.key});

  @override
  State<WebSocketL9> createState() => _WebSocketL9State();
}

class _WebSocketL9State extends State<WebSocketL9> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
     body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Web Sockets", style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "In addition to normal HTTP requests, you can connect to servers using WebSockets. Web sockets allows for bidirectional communication between a client (such as a web browser) and a server over a single, long-lived connection. They are a more efficient alternative to HTTP for providing real-time data, as they allow for the server to push data to the client as soon as it becomes available, rather than requiring the client to continuously poll the server for updates.",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Visit the following resources to learn more:',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "Work with WebSockets",
              "https://docs.flutter.dev/cookbook/networking/web-sockets",
            ),
             const SizedBox(
              height: 20,
            ),
            LaunchUrl.buildLink(
              context,
              "What is WebSocket and How It Works?",
              "https://www.wallarm.com/what/a-simple-explanation-of-what-a-websocket-is",
            ),
          ],
        ),
      ),
    );
  }
}
