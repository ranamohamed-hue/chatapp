import 'package:chatapp2/feature/homescreen/ui/widgetss/listViewBuilder.dart';
import 'package:flutter/material.dart';

class Callscreen extends StatefulWidget {
  const Callscreen({super.key});

  @override
  State<Callscreen> createState() => _CallscreenState();
}

class _CallscreenState extends State<Callscreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          SizedBox(height: 20),
          _GridViewBuilder(),
          SizedBox(height: 20),
          Listviewbuilder(
            itemcountt: 5,
            title: "Person Name",
            subtitel: "Date",
            time: "12.12",
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
