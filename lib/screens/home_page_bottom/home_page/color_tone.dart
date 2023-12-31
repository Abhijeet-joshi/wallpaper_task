import 'package:flutter/material.dart';

import '../../../image_List/image_list.dart';
import '../../wallpaper_home/categor_wallpaper.dart';

class Color_Tone extends StatelessWidget {
  var queryControllerl;
  Color_Tone({required this.queryControllerl});
  bool isSeletColor = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        itemCount: SeletColor.colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              /*  Text("${SeletColor.colors[index]['name']}"),
              SizedBox(
                height: 10,
              ), */
              InkWell(
                onTap: () {
                  isSeletColor = true;
                  // print(queryController.text.toString());
                  print("ontap click");
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Category_Wallpaper(
                              query: queryControllerl!.toString(),
                              colorCode: SeletColor.colors[index]['name'],
                            )),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  height: 60,
                  width: 50,
                  decoration: BoxDecoration(
                      color: SeletColor.colors[index]['color'],
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
