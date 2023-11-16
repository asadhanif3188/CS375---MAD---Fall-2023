import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final _formKey = GlobalKey<FormState>();
  String showData = "";

  final firstTextFieldController = TextEditingController();
  final secondTextFieldController = TextEditingController();

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
                controller: firstTextFieldController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter first number'
                ),
                validator: (value) {
                  if(value == null || value.isEmpty)
                  {
                    return "Please enter first number";
                  }
                  else {
                    return null;
                  }
                },
              ),

              SizedBox(height: 5,),

              TextFormField(
                controller: secondTextFieldController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter second number.'
                ),
                validator: (value) {
                  if(value == null || value.isEmpty)
                  {
                    return "Please enter second number";
                  }
                  else {
                    return null;
                  }
                },
              ),

              ElevatedButton(
                onPressed: (){
                  if(_formKey.currentState!.validate()){
                    int val1 = int.parse(firstTextFieldController.text);
                    int val2 = int.parse(secondTextFieldController.text);

                    int ans = val1 + val2;

                    showData = ans.toString();

                    setState(() {  });

                    // ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(content: Text('Processing Data')),
                    // );
                  }
                },
                child: Text('Submit'),
              ),

              SizedBox(height: 20,),

              Text(showData),

              SizedBox(height: 20,),

              Text(showData),
            ],
          ),
        ),
      ),
    );
  }
}
