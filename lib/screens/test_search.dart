import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class test_search extends StatefulWidget {
  const test_search({super.key});

  @override
  State<test_search> createState() => _test_searchState();
}

class _test_searchState extends State<test_search> {
  final inputController = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  List<String> searchResults = [];
  bool noResults = false;

  Future<void> searchDocuments(String searchText) async {
    final QuerySnapshot querySnapshot = await firestore
        .collection('user_information')
        .where(FieldPath.documentId, isEqualTo: searchText)
        .get();

    setState(() {
      searchResults.clear();
      noResults = querySnapshot.docs.isEmpty; // 결과가 없는 경우 true로 설정합니다.
      if (!noResults) {
        for (var doc in querySnapshot.docs) {
          searchResults.add(doc.id);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Search Document Name',
              contentPadding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04,
              ),
              border: InputBorder.none,
            ),
            controller: inputController,
            onChanged: (value) {
              searchDocuments(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          if (noResults) // 결과가 없는 경우 메시지를 출력합니다.
            const Text(
              'No matching documents found.',
              style: TextStyle(color: Colors.red),
            ),
          if (!noResults)
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchResults[index]),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
