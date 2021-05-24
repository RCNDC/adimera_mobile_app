import 'package:flutter/material.dart';
import 'package:adimera_mobile_app/constants.dart';
import 'package:flutter/cupertino.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    'Anguilla',
    "Antarctica",
    " Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
  ];
  final recentCities = [];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(
            CupertinoIcons.clear_circled,
            color: bgcolor,
          ),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          color: bgcolor,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, " ");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return AlertDialog(
      title: Text('Selected City'),
      content: Text(query),
      actions: <Widget>[
        TextButton(
          child: Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggessionList = query.isEmpty
        ? recentCities
        : cities
            .where((p) => p.contains(
                  query,
                ))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(CupertinoIcons.cube_box),
        title: RichText(
          text: TextSpan(
              text: suggessionList[index].substring(0, query.length),
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggessionList[index].substring(query.length),
                    style: TextStyle(color: Colors.grey)),
              ]),
        ),
      ),
      itemCount: suggessionList.length,
    );
  }
}
