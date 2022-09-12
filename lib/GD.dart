import 'dart:ffi';

import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jwelly',
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Gold Jwelly')),
          backgroundColor: Colors.pink[200],
        ),
        body: jwellypage(),
      ),
    );
  }
}
class jwellypage extends StatefulWidget {
  const jwellypage({Key? key}) : super(key: key);

  @override
  State<jwellypage> createState() => _jwellypageState();
}
class _jwellypageState extends State<jwellypage> {
  TextEditingController weight=TextEditingController();
  TextEditingController rate=TextEditingController();
  TextEditingController making=TextEditingController();
  String price="0";
  String pgst="0";

  bool first=false;
  bool second=false;
  bool third=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('18K'),
              Checkbox(
                  checkColor: Colors.black,
                  value: second,
                  onChanged: (bool? value){
                    setState((){
                      second=value!;
                    }
                    );
                  }
              ),
              Text('22K'),
              Checkbox(
                  checkColor: Colors.black,
                  value: third,
                  onChanged: (bool? value){
                    setState((){
                      third=value!;
                    }
                    );
                  }
              ),
              Text('GST'),
              Checkbox(
                  checkColor: Colors.black,
                  value: first,
                  onChanged: (bool? value){
                    setState((){
                      first=value!;
                    }
                    );
                  }
              ),
            ],
          ),
          Row(
            children: [
              Text('Gold Rate :',
                  style:TextStyle(
                    fontSize: 20,
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 08, 0,0),
                child: SizedBox(
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: rate,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Text('Gold Weight(g) :',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 08, 0,0),
                child: SizedBox(
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: weight,
                  ),
                ),
              )
            ],

          ),

          Row(
            children: [
              Text('Making :',
                  style:TextStyle(
                    fontSize: 20,
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 08, 0,0),
                child: SizedBox(
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: making,
                  ),
                ),
              )
            ],
          ),
          /*     Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,10,0,0),
                child: Text('GST : 3%',
                    style:TextStyle(
                      fontSize: 20,
                    )
                ),
              ),
            ],
          ),*/
          SizedBox(
            width: 100,
            height: 30,
          ),
          Row(
            children: [
              Expanded(child: TextButton(
                child: Container(
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('PRICE',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                onPressed: (){
                  setState((){
                    if(second==true){
                      double sum=double.parse(weight.text)*(int.parse(rate.text)*0.76)+(int.parse(making.text)*double.parse(weight.text));
                      double gst=sum+(0.03*sum);
                      //    price=sum.toString();
                      //pgst=gst.toString();
                      if(first==true){
                        pgst=gst.toString();
                      }
                      else{
                        pgst=sum.toString();
                      }
                    }
                    else if(third=true){
                      double sum=double.parse(weight.text)*(int.parse(rate.text)*0.92)+(int.parse(making.text)*double.parse(weight.text));
                      double gst=sum+(0.03*sum);
                      //   price=sum.toString();
                  //    pgst=gst.toString();
                      if(first==true){
                        pgst=gst.toString();
                      }
                      else{
                        pgst=sum.toString();
                      }
                    }
                  });
                },
              )
              )
            ],
          ),
          /*   Text('Rs.$price',
            style: TextStyle(
              fontSize: 30,
            ),
          ),*/
          Text('Rs.$pgst',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }
}
