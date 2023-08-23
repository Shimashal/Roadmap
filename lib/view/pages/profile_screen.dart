// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:map_app_task/res/color.dart';
import 'package:map_app_task/utils/utils.dart';
import 'package:map_app_task/view_model/widgets/my_textfield.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../res/components/round_btn.dart';
import '../../utils/routes/route_name.dart';
import '../../view_model/services/session_manager.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  String? selectedStack;
  String? currentUserName;
  String? currentUserEmail;
  DateTime? selectedDate;
  final DatabaseReference _ref =
      FirebaseDatabase.instance.reference().child('User');
  FirebaseStorage firebasestorage = FirebaseStorage.instance;
  final picker = ImagePicker();
  File? _imageFile;
  bool loading = false;
  String? profileImageUrl; // Variable to store the profile image URL

  @override
  void initState() {
    super.initState();
    // getCurrentUserEmail();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    ageController.dispose();
    phoneNumberController.dispose();
    countryController.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      final DateFormat formatter = DateFormat('dd/MM/yyyy');
      final String formattedDate = formatter.format(pickedDate);
      setState(() {
        selectedDate = pickedDate;
        ageController.text =
            formattedDate; // Set the selected date to the text field
      });
    }
  }

  void updateUserProfile() {
    if (_formKey.currentState!.validate()) {
      // Performs the update operation
      final Map<String, dynamic> updatedData = {
        'name': nameController.text,
        'age': ageController.text,
        'phone': phoneNumberController.text,
        'country': countryController.text,
        'stack': selectedStack,
        'profile': profileImageUrl,
      };

      _ref
          .child(SessionController().userId.toString())
          .update(updatedData)
          .then((_) {
        // Updating successful
        Utils.toastMessage('Profile updated successfully');
      }).catchError((error) {
        // Updates are failed
        Utils.toastMessage('Failed to update profile');
        print('Error: $error');
      });
    }
  }

  void clearTextFields() {
    nameController.clear();
    ageController.clear();
    phoneNumberController.clear();
    countryController.clear();
    setState(() {
      selectedStack = null;
    });
  }

  //Upload Image
  Future<void> uploadImage() async {
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImage == null) {
      return;
    }

    setState(() {
      loading = true;
    });

    final fileName =
        DateTime.now().millisecondsSinceEpoch.toString(); // Unique filename
    final imageFile = File(pickedImage.path);

    try {
      final uploadTask =
          firebasestorage.ref().child('images/$fileName').putFile(imageFile);
      final snapshot = await uploadTask;
      final downloadURL = await snapshot.ref.getDownloadURL();
      setState(() {
        profileImageUrl = downloadURL; // Set the profile image URL
      });
      Utils.toastMessage("Image uploaded successfully");
    } catch (error) {
      print(error);
      Utils.toastMessage('Failed to upload image');
    } finally {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Image
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey, width: 2),
                      ),
                      child: Stack(
                        children: [
                          if (_imageFile != null)
                            ClipOval(
                              child: Image.file(
                                _imageFile!,
                                fit: BoxFit.cover,
                              ),
                            )
                          else if (profileImageUrl != null && !loading)
                            ClipOval(
                              child: Image.network(
                                profileImageUrl!,
                                fit: BoxFit.cover,
                              ),
                            )
                          else
                            ClipOval(
                              child: StreamBuilder(
                                stream: _ref
                                    .child(
                                        SessionController().userId.toString())
                                    .onValue,
                                builder: (context, snapshot) {
                                  if (!snapshot.hasData) {
                                    return const Icon(Icons.person, size: 85);
                                  } else if (snapshot.hasData) {
                                    final DataSnapshot dataSnapshot =
                                        snapshot.data!.snapshot;
                                    final Map<dynamic, dynamic>? data =
                                        dataSnapshot.value
                                            as Map<dynamic, dynamic>?;

                                    if (data != null) {
                                      final String profileImageUrl =
                                          data['profile'] ?? '';

                                      if (profileImageUrl.isEmpty) {
                                        return const Icon(Icons.person,
                                            size: 85);
                                      } else {
                                        return Image.network(
                                          profileImageUrl,
                                          fit: BoxFit.cover,
                                        );
                                      }
                                    } else {
                                      return const Icon(Icons.person);
                                    }
                                  } else {
                                    return const Icon(Icons.person);
                                  }
                                },
                              ),
                            ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.shade400,
                              ),
                              child: IconButton(
                                onPressed: () {
                                  uploadImage();
                                },
                                icon: const Icon(Icons.file_upload_outlined,
                                color: AppColors.primaryColor, ),
                              ),
                            ),
                            
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // User Information
                StreamBuilder(
                  stream:
                      _ref.child(SessionController().userId.toString()).onValue,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasData) {
                      final DataSnapshot dataSnapshot = snapshot.data!.snapshot;
                      final Map<dynamic, dynamic>? data =
                          dataSnapshot.value as Map<dynamic, dynamic>?;

                      if (data != null) {
                        final String username = data['username'] ?? '';

                        return Text(
                          username,
                          style: Theme.of(context).textTheme.headline3,
                        );
                      } else {
                        return const Text('Learner');
                      }
                    } else {
                      return const Text('Student');
                    }
                  },
                ),

                //TextFields
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        MyTextField(
                          icon: Icons.person,
                          name: 'Name',
                          controller: nameController,
                          hintText: 'Enter Full Name',
                          keyboardType: TextInputType.name,
                        ),
                        InkWell(
                          onTap: () {
                            _selectDate(context);
                          },
                          child: IgnorePointer(
                            child: MyTextField(
                              icon: Icons.date_range_outlined,
                              name: 'DOB',
                              controller: ageController,
                              hintText: 'Enter Date of Birth',
                              keyboardType: TextInputType.datetime,
                            ),
                          ),
                        ),
                        MyTextField(
                          icon: Icons.phone_android,
                          name: 'Phone Number',
                          controller: phoneNumberController,
                          hintText: 'Enter Phone Number',
                          keyboardType: TextInputType.phone,
                        ),
                        MyTextField(
                          icon: Icons.location_city_rounded,
                          name: 'Country',
                          controller: countryController,
                          hintText: 'Enter Country',
                          keyboardType: TextInputType.text,
                        ),
                        DropdownButtonFormField<String>(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Color(0xff828ce8)),
                                borderRadius: BorderRadius.circular(12)),
                            hintText: 'Enter Stack',
                            hintStyle: Theme.of(context).textTheme.subtitle1,
                            filled: true,
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            fillColor: Colors.grey[200],
                          ),
                          value: selectedStack,
                          onChanged: (newValue) {
                            setState(() {
                              selectedStack = newValue;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return 'Please select your stack';
                            }
                            return null;
                          },
                          items: [
                            'FLUTTER',
                            'MERN',
                            'MEAN',
                            'ASP.NET',
                            'Python'
                          ].map((stack) {
                            return DropdownMenuItem<String>(
                              value: stack,
                              child: Text(stack),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: RoundButton(
                                title: 'Update',
                                onPress: () {
                                  updateUserProfile(); //Updating
                                },
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: RoundButton(
                                color: Colors.white,
                                title: 'Cancel',
                                onPress: () {
                                  clearTextFields(); // Clear text fields
                                },
                              ),
                            ),
                            Expanded(
                              child: RoundButton(
                                title: 'View Profile',
                                onPress: () {
                                  Navigator.pushNamed(
                                      context, RouteName.MyProfile_screen);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
