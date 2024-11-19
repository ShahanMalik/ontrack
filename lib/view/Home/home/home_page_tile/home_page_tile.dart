import 'package:flutter/material.dart';
import 'package:ontrack/utils/color_resources.dart';
import 'package:ontrack/view/Home/home/home_page_tile/widgets/card_grid.dart';
import 'package:ontrack/view/Home/home/home_page_tile/widgets/days_of_week_container.dart';

class HomePageTile extends StatefulWidget {
  HomePageTile({Key? key}) : super(key: key);

  @override
  State<HomePageTile> createState() => _HomePageTileState();
}

class _HomePageTileState extends State<HomePageTile> {
  final List<String> daysOfWeek = ['M', 'T', 'W', 'T', 'F', 'S', 'Su'];

  @override
  Widget build(BuildContext context) {
    final currentDay = DateTime.now().weekday - 1;
    // print(currentDay);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorResources.gradientColor,
            Colors.black,
            Colors.black,
            Colors.black,
          ],
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
          child: Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/background.png'),
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: ColorResources.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Track your progress against your goals',
                  style: TextStyle(
                    color: ColorResources.white,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: IconButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      ColorResources.primaryColor,
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: ColorResources.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: daysOfWeek.map((day) {
                  return Expanded(
                    child: DayOfWeekContainer(
                      day: day,
                      isSelected: currentDay == daysOfWeek.indexOf(day),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: CardGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
