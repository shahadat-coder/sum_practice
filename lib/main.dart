import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sum_field/style.dart';


void main(){
  runApp(MyCounter());
}
class MyCounter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter App",
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.deepOrange),
      home: SumPage(),
    );
  }
}
class SumPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _SumPageUI();
  }
}

class _SumPageUI extends State<SumPage>
{

  Map<String,double> FormValue = {
    "Num1":0,
    "Num2":0,
    "Num3":0,
  };
  double Sum = 0;

  @override
  Widget build(BuildContext context) {

    MyImputOnChange(InputKey,InputValue){
      setState(() {});
      FormValue.update(InputKey, (value) =>double.parse(InputValue));
    }

    AddAllNumber(){
      setState(() {
        Sum = FormValue ['Num1']! +FormValue ['Num2']! +FormValue ['Num3']! ;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text ("Sum App"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text( Sum.toString(),style: TextStyle(fontSize: 20 ),),
            SizedBox(height: 20,),

            TextFormField(onChanged: (Value){
              // set value to Num1
              MyImputOnChange("Num1",Value);
            },decoration: AppInputStyle("First Number"),),

            SizedBox(height: 20,),

            TextFormField(onChanged: (Value){
              // set value to Num2
              MyImputOnChange("Num2",Value);
            },decoration: AppInputStyle("Second Number"),),

            SizedBox(height: 20,),

            TextFormField(onChanged: (Value){
              // set value to Num3
              MyImputOnChange("Num3",Value);
            },decoration: AppInputStyle("Third Number"),),

            SizedBox(height: 20,),
            Container(
              child: ElevatedButton(onPressed: (){
                AddAllNumber();
              }, child: Text("Add"),

              ),

            )
          ],
        ),

      ),

    );
  }

}




