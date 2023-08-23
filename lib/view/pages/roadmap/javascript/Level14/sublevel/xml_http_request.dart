// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:map_app_task/res/components/launch_url.dart';

class XMLHTTPReq extends StatefulWidget {
  const XMLHTTPReq({super.key});

  @override
  State<XMLHTTPReq> createState() => _XMLHTTPReqState();
}

class _XMLHTTPReqState extends State<XMLHTTPReq> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("XMLHttpRequest", style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.justify,),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "XMLHttpRequest (XHR) is a built-in browser object that can be used to interact with server. XHR allows you to update data without having to reload a web page. Despite the word XML in its name, XHR not only used to retrieve data with XML format, we can use it with any type of data, like JSON, file(s), and much more.",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Visit the following resources to learn more:",
                  style: Theme.of(context).textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                ),
              ),
            LaunchUrl.buildLink(
              context,
              "Using XMLHttpRequest",
              "https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest/Using_XMLHttpRequest",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "Network request - XMLHttpRequest",
              "https://javascript.info/xmlhttprequest",
            ),
            const SizedBox(
              height: 10,
            ),
            LaunchUrl.buildLink(
              context,
              "W3Schools",
              "https://www.w3schools.com/xml/xml_http.asp",
            ),
            const SizedBox(
              height: 10,
            ),
          ],

        ),
      ),
    );
  }
}
