import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  var selectedDate=DateTime.now();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add New Task',style: Theme.of(context).textTheme.subtitle1,textAlign: TextAlign.center),
            Form(
              key: formKey,
                child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  TextFormField(
                    validator: (text){
                      if(text == null || text.isEmpty){
                        return 'please enter the task titlt';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Title'
                    ),
                  ),
                  TextFormField(
                    validator: (text){
                      if(text == null || text.isEmpty){
                        return 'please enter the task description';
                      }
                      return null;
                    },
                    maxLines: 4,
                    minLines: 2,
                    decoration: InputDecoration(
                        labelText: 'Description'
                    ),
                  )
                ],
              ),
            )),
            SizedBox(height: 20,),
            Text('Select Time',),
            SizedBox(height: 12,),
            InkWell(
              onTap: (){
                OpenDatePicker();
              },
                child: Text('${selectedDate.day}-${selectedDate.month}-${selectedDate.year}',textAlign: TextAlign.center,)),
            SizedBox(height: 12,),
            ElevatedButton(onPressed: (){
              if(formKey.currentState!.validate()){
                
              }
            }, child: Text('Add Task'))
          ],
        ),
      ),
    );
  }
 void OpenDatePicker()async{
    var choosenDate = await showDatePicker(context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if(choosenDate!=null){
      selectedDate = choosenDate;
      setState(() {

      });
    }
  }
}
