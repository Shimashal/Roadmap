// ignore_for_file: deprecated_member_use

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/view_model/services/session_manager.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({ Key? key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  final ref = FirebaseDatabase.instance.ref('User');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: StreamBuilder(
              stream: ref.child(SessionController().userId.toString()).onValue,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'Error: ${snapshot.error}',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  );
                } else if (!snapshot.hasData || snapshot.data?.snapshot.value == null) {
                  return Center(
                    child: Text(
                      'No data available',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  );
                }
      
                final DataSnapshot dataSnapshot = snapshot.data!.snapshot;
                final Map<dynamic, dynamic>? map = dataSnapshot.value as Map<dynamic, dynamic>?;
      
                if (map != null) {
                   print("Profile URL: ${map['profile']}"); 
                  return Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          height: 130,
                          width: 130,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.primaryColor, width: 6),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: map['profile'] == null || map['profile'].toString() == ""
                                ? const Icon(Icons.person_outlined, size: 35,)
                                : Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(map['profile'].toString(),),
                                    loadingBuilder: (context, child, loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return const Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    },
                                    errorBuilder: (context, error, stackTrace) {
                                      return Container(
                                        child: const Icon(
                                          Icons.error_outline,
                                          color: AppColors.alertColor,
                                        ),
                                      );
                                    },
                                  ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ResuableRow(title: 'Full Name', iconData: Icons.person_2_outlined, value: map['name'] ?? ""),
                      ResuableRow(title: 'Email', iconData: Icons.email_outlined, value: map['email'] ?? ""),
                      ResuableRow(title: 'Age', iconData: Icons.date_range_outlined, value: map['age'] ?? ""),
                      ResuableRow(title: 'Country', iconData: Icons.location_city_rounded, value: map['country'] ?? ""),
                     ResuableRow(title: 'Phone', iconData: Icons.phone_android_outlined, value: map['phone'] == "" ? 'xxx-xxx-xxxx' : map['phone'] ?? ""),
                     //ResuableRow(title: 'Phone', iconData: Icons.phone_android_outlined, value: map['phone'] ?? ""),
                      ResuableRow(title: 'Stack', iconData: Icons.book_online_rounded, value: map['stack'] ?? ""),
                    ],
                  );
                } else {
                  return Center(child: Text('Something Went Wrong', style: Theme.of(context).textTheme.subtitle1),);
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ResuableRow extends StatelessWidget {
  final String value, title;
  final IconData iconData;

  const ResuableRow({Key? key, required this.title, required this.iconData, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(title, style: Theme.of(context).textTheme.subtitle2),
          leading: Icon(iconData, color: AppColors.primaryColor,),
          trailing: Text(value, style: Theme.of(context).textTheme.subtitle1),
        ),
        Divider(
          color: AppColors.dividedColor.withOpacity(0.4),
        ),
      ],
    );
  }
}
