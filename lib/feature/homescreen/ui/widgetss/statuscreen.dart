import 'package:chatapp2/feature/homescreen/ui/widgetss/listViewBuilder.dart';
import 'package:flutter/material.dart';

class Statuscreen extends StatefulWidget {
  const Statuscreen({super.key});

  @override
  State<Statuscreen> createState() => _StatuscreenState();
}

class _StatuscreenState extends State<Statuscreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Up Dates',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 20),
          _GridViewBuilder(),
          SizedBox(height: 20),
          _chanels(),
          Expanded(
            child: Listviewbuilder(
              itemcountt: 5,
              title: "Chanel1",
              subtitel: "Last chat",
              time: "12.12",
            ),
          ),
        ],
      ),
    );
  }
}

Widget _GridViewBuilder() {
  return Container(
    height: 100,
    width: double.infinity,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    child: Scrollbar(
      scrollbarOrientation: ScrollbarOrientation.bottom,
      thickness: 2,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(5),
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadowColor: const Color.fromARGB(255, 56, 9, 68).withOpacity(0.5),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 196, 184, 199),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 3,
                    right: 3,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 140, 52, 158),
                        image: const DecorationImage(
                          image: AssetImage('assets/callcenter.GIF'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    left: 0,
                    child: Text(
                      'Person Mane',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ),
  );
}

Widget _chanels() {
  return Row(
    children: [
      SizedBox(width: 20),
      Text('Chanels', style: TextStyle(fontSize: 23, color: Colors.grey)),
      Spacer(),

      ElevatedButton(
        onPressed: () {},
        child: Text(
          'Discover',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
      ),
    ],
  );
}
