//
// Generated file. Do not edit.
//

import 'package:firebase_core_web/firebase_core_web.dart';
// import 'package:firebase_database_web/firebase_database_web.dart';
import 'package:firebase_storage_web/firebase_storage_web.dart';
import 'package:fluttertoast/fluttertoast_web.dart';
import 'package:image_picker_for_web/image_picker_for_web.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  FirebaseCoreWeb.registerWith(registrar);
  //FirebaseDatabaseWeb.registerWith(registrar);
  FirebaseStorageWeb.registerWith(registrar);
  FluttertoastWebPlugin.registerWith(registrar);
  ImagePickerPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
