import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/res/components/circular.dart';
import 'package:map_app_task/utils/routes/route_name.dart';
import 'package:provider/provider.dart';
import '../../res/components/progressprovider.dart';
import '../../view_model/services/session_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  final DatabaseReference _ref =
      FirebaseDatabase.instance.reference().child('User');

  // OverlayEntry? _overlayEntry;
  // final List<String> suggestions = [
  //   'Flutter',
  //   'React',
  //   'Angular',
  //   'ASP.NET Core',
  //   'Python',
  //   'JavaScript',
  // ];

  // Future<List<String>> fetchSuggestions(String pattern) async {
  //   final lowercasePattern = pattern.toLowerCase();
  //   return suggestions.where((suggestion) {
  //     final lowercaseSuggestion = suggestion.toLowerCase();
  //     return lowercaseSuggestion.startsWith(lowercasePattern);
  //   }).toList();
  // }

  // void _onSearchTextChanged() {
  //   final pattern = _searchController.text;
  //   if (pattern.isNotEmpty && _searchFocusNode.hasFocus) {
  //     _showSuggestions();
  //   } else {
  //     _hideSuggestions();
  //   }
  // }

  // void _showSuggestions() {
  //   if (_overlayEntry != null) return;

  //   final RenderBox renderBox = context.findRenderObject() as RenderBox;
  //   final overlay = Overlay.of(context);

  //   _overlayEntry = OverlayEntry(
  //     builder: (context) {
  //       return Positioned(
  //         width: renderBox.size.width,
  //         child: CompositedTransformFollower(
  //           link: LayerLink(),
  //           showWhenUnlinked: false,
  //           child: Card(
  //             elevation: 2,
  //             child: Material(
  //               child: Column(
  //                 children: [
  //                   for (final suggestion in suggestions)
  //                     ListTile(
  //                       title: Text(suggestion),
  //                       onTap: () {
  //                         _searchController.text = suggestion;
  //                         _hideSuggestions();
  //                         // Navigate to another screen based on the selected suggestion
  //                       },
  //                     ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ),
  //       );
  //     },
  //   );

  //   overlay.insert(_overlayEntry!);
  // }

  // void _hideSuggestions() {
  //   _overlayEntry?.remove();
  //   _overlayEntry = null;
  // }

  // void _handleTap() {
  //   if (_searchFocusNode.hasFocus) {
  //     _searchFocusNode.unfocus();
  //   } else {
  //     if (_overlayEntry != null) {
  //       _hideSuggestions();
  //     }
  //   }
  // }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //  final completedLevelsProvider = context.watch<CompletedLevelsProvider>();
    // final completedLevels = completedLevelsProvider.completedLevels;

    ///newest
//     final collectiveProgressProvider =
//     Provider.of<CollectiveProgressProvider>(context, listen: true);
// double collectiveProgress = collectiveProgressProvider.collectiveProgress;

    final progressProvider = Provider.of<ProgressProvider>(context);
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  title: Text(
                    'Hello,',
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                          color: Color.fromARGB(255, 228, 225, 225),
                        ),
                  ),
                  subtitle: StreamBuilder(
                    stream: _ref
                        .child(SessionController().userId.toString())
                        .onValue,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const SizedBox();
                      } else if (snapshot.hasData) {
                        final DataSnapshot dataSnapshot =
                            snapshot.data!.snapshot;
                        final Map<dynamic, dynamic>? data =
                            dataSnapshot.value as Map<dynamic, dynamic>?;

                        if (data != null) {
                          final String username = data['username'] ?? '';

                          return Text(
                            username,
                            style:
                                Theme.of(context).textTheme.headline3?.copyWith(
                                      color: Color.fromARGB(255, 228, 225, 225),
                                    ),
                          );
                        } else {
                          return const Text('Learner');
                        }
                      } else {
                        return const Text('Student');
                      }
                    },
                  ),
                  trailing: SizedBox(
                    width: 60,
                    height: 65,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: CircularProgressBar(
                            progress:
                                progressProvider.calculateCombinedProgress(),
                            radius: 30.0, // Adjust the radius as needed
                          ),
                        ),
                        // Center(
                        //   child: ClipOval(
                        //     child: Container(
                        //       width:
                        //           80, // Adjust the value to make it perfectly circular
                        //       height:
                        //           80, // Adjust the value to make it perfectly circular
                        //       decoration: BoxDecoration(
                        //         shape: BoxShape.circle,
                        //         border:
                        //             Border.all(color: Colors.grey, width: 2),
                        //       ),
                        //       child: PopupMenuButton(
                        //         itemBuilder: (BuildContext context) => [
                        //           const PopupMenuItem(
                        //             value: 'logout',
                        //             child: Text('Logout'),
                        //           ),
                        //         ],
                        //         onSelected: (value) {
                        //           if (value == 'logout') {
                        //             FirebaseAuth auth = FirebaseAuth.instance;
                        //             auth.signOut().then((value) {
                        //               SessionController().userId = '';
                        //               Navigator.pushNamed(
                        //                   context, RouteName.loginView);
                        //             });
                        //           }
                        //         },
                        //         child: StreamBuilder(
                        //           stream: _ref
                        //               .child(
                        //                   SessionController().userId.toString())
                        //               .onValue,
                        //           builder: (context, snapshot) {
                        //             if (!snapshot.hasData) {
                        //               return const Icon(Icons.person);
                        //             } else if (snapshot.hasData) {
                        //               final DataSnapshot dataSnapshot =
                        //                   snapshot.data!.snapshot;
                        //               final Map<dynamic, dynamic>? data =
                        //                   dataSnapshot.value
                        //                       as Map<dynamic, dynamic>?;

                        //               if (data != null) {
                        //                 final String profileImageUrl =
                        //                     data['profile'] ?? '';

                        //                 if (profileImageUrl.isNotEmpty) {
                        //                   return Image.network(
                        //                     profileImageUrl,
                        //                     fit: BoxFit.cover,
                        //                   );
                        //                 } else {
                        //                   return const Icon(Icons.person);
                        //                 }
                        //               } else {
                        //                 return const Icon(Icons.person);
                        //               }
                        //             } else {
                        //               return const Icon(Icons.person);
                        //             }
                        //           },
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Container(
            color: AppColors.primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(100))),
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard(
                    title: 'Flutter',
                    imageUrl: 'assets/images/flutters.png',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.FirstFLutter);
                    },
                  ),
                  itemDashboard(
                    title: 'React',
                    imageUrl: 'assets/images/react.png',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.roadmapReact);
                    },
                  ),
                  itemDashboard(
                    title: 'JavaScript',
                    imageUrl: 'assets/images/JavaScript.png',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.javaScriptGuide);
                    },
                  ),
                  itemDashboard(
                    title: 'Angular',
                    imageUrl: 'assets/images/angular.png',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.roadmapAngular);
                    },
                  ),
                  itemDashboard(
                    title: 'Python',
                    imageUrl: 'assets/images/python_.png',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.pythonroadmap);
                    },
                  ),
                  itemDashboard(
                    title: 'ASP.NET Core',
                    imageUrl: 'assets/images/asp.jpg',
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.roadmapASP);
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }

  Widget itemDashboard({
    required String title,
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap, // Call the onTap function when this widget is tapped
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: AppColors.primaryColor.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Image.asset(imageUrl),
            ),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
}
