import 'package:flutter/material.dart';
import 'package:ontrack/utils/color_resources.dart';

class CardGrid extends StatelessWidget {
  CardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: ColorResources.commonColor,
          child: Stack(
            children: const [
              Positioned(
                top: 20,
                left: 10,
                child: Icon(
                  Icons.directions_walk,
                  color: ColorResources.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("Steps",
                              style: TextStyle(
                                color: ColorResources.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              )),
                          Text("Steps",
                              style: TextStyle(
                                color: ColorResources.mediumwhite,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              )),
                        ],
                      ),
                      Text(
                        '85603',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              child: LinearProgressIndicator(
                                minHeight: 12.0,
                                backgroundColor:
                                    Color.fromARGB(255, 25, 74, 114),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  Color.fromARGB(255, 201, 45, 115),
                                ),
                                value: 0.5,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              '50%',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
