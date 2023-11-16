import 'package:flutter/material.dart';

class StudentData extends StatefulWidget {
  const StudentData({super.key});

  @override
  State<StudentData> createState() => _StudentDataState();
}

class _StudentDataState extends State<StudentData> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Form'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name'
                ),
                validator: (value) {
                  if(value == null || value.isEmpty)
                    {
                      return "Please enter your name";
                    }
                  else {
                    return null;
                  }
                },
              ),

              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your degree'
                ),
                validator: (value) {
                  if(value == null || value.isEmpty)
                  {
                    return "Please enter your degree";
                  }
                  else if (value.length < 2){
                    return "Length should be greater than 2.";
                  }
                  else {
                    return null;
                  }
                },
              ),

              ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){

                      

                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(content: Text('Processing Data')),
                      // );
                    }
                  },
                  child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
