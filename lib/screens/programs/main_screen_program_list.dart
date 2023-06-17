import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../models/programs/main_program_model.dart';

class HorizontalProgramList extends StatefulWidget {
  const HorizontalProgramList({super.key});

  @override
  State<HorizontalProgramList> createState() => _HorizontalProgramListState();
}

class _HorizontalProgramListState extends State<HorizontalProgramList> {
  final List<DummyData> column1Data = [
    DummyData(
      image: 'assets/images/lesson.png',
    ),
  ];

  Future<ProgramLists> fetchData() async {
    final response = await http.get(
      Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'),
    );
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body) as Map<String, dynamic>;
      return ProgramLists.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch data from API');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ProgramLists>(
      future: fetchData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final programList = snapshot.data!;
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: programList.items.length,
            itemBuilder: (context, index) {
              final program = programList.items[index];
              return Padding(
                padding: const EdgeInsets.all(8),
                child: Card(
                  elevation: 5,
                  child: Card(
                    child: Container(
                      width: 300,
                      height: 340,
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(column1Data[0].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            program.category,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 75, 148, 237),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            program.name,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 18),
                          Text(
                            '${program.createdAt}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'lesson:${program.lesson}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Failed to fetch data'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
