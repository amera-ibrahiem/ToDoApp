import 'package:flutter/material.dart';
import 'package:todo_list_app/modules/settings/settings.dart';
import 'package:todo_list_app/modules/tasks/tasks.dart';
import '../modules/add_task_bottom_sheet.dart';

class HomeLayout extends StatefulWidget {
  static const String routename ='home';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo List',style: Theme.of(context).textTheme.headline1,),
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onTap: (index){
            currentIndex=index;
            setState((){

            });
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.list),label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ''),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: StadiumBorder(
            side: BorderSide(
              color: Colors.white,
              width: 4
            )
          ),
        child: Icon(Icons.add),
          onPressed: (){
            BottomSheetAddTask();
          },
      ),
    );
  }
  List<Widget> tabs=[TasksTab(),SettingsTab()];
  BottomSheetAddTask(){
    showModalBottomSheet(context: context, builder: (_){
      return AddTaskBottomSheet();
    });
  }
}
