// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:map_app_task/utils/routes/route_name.dart';

class SearchDelegateClass extends StatefulWidget {
  const SearchDelegateClass({super.key});

  @override
  _SearchDelegateClassState createState() => _SearchDelegateClassState();
}

class _SearchDelegateClassState extends State<SearchDelegateClass> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> suggestions = [
    'Flutter',
    'React',
    'Angular',
    'ASP.NET Core',
    'Python',
    'JavaScript',
  ];

  Future<List<String>> fetchSuggestions(String pattern) async {
    final lowercasePattern = pattern.toLowerCase();
    return suggestions.where((suggestion) {
      final lowercaseSuggestion = suggestion.toLowerCase();
      return lowercaseSuggestion.startsWith(lowercasePattern);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<String>(
      textFieldConfiguration: TextFieldConfiguration(
        autofocus: true,
        controller: _searchController,
        decoration: const InputDecoration(
          labelText: 'SearchBar',
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
        ),
      ),
      suggestionsCallback: (pattern) async {
        return await fetchSuggestions(pattern);
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(suggestion),
        );
      },
      onSuggestionSelected: (suggestion) {
        _searchController.text = suggestion;
        // Navigate to another screen based on the selected suggestion
        switch (suggestion) {
          case 'Flutter':
            Navigator.pushNamed(context, RouteName.FirstFLutter);
            break;
          case 'React':
            Navigator.pushNamed(context, RouteName.roadmapReact);
            break;
          case 'Angular':
            Navigator.pushNamed(context, RouteName.roadmapAngular);
            break;
          case 'ASP.NET Core':
            Navigator.pushNamed(context, RouteName.roadmapASP);
            break;
          case 'Python':
            Navigator.pushNamed(context, RouteName.pythonroadmap);
            break;
          case 'JavaScript':
            Navigator.pushNamed(context, RouteName.roadmapJavaScript);
            break;

          default:
            break;
        }
      },
    );
  }
}
