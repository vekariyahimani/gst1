import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _HomeState();
}

class _HomeState extends State<Page1> {
  String OR = '';
  double gst = 0;
  double FP = 0;
  double Rate = 0;
  double i = 0;

  List l1 = [
    Colors.grey.shade200,
    Colors.grey.shade200,
    Colors.grey.shade200,
    Colors.grey.shade200,
    Colors.grey.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("ORIGINAL PRICE", style: TextStyle(fontSize: 20)),
                      Align(
                          alignment: Alignment.centerRight,
                          child:
                              Text("$OR Rs.", style: TextStyle(fontSize: 20))),
                    ],
                  ),
                ),
              ),
              Center(
                  child: Container(
                height: 75,
                decoration: BoxDecoration(
                    color: Color(0xffEEEEEE),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("GST", style: TextStyle(fontSize: 20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                l1[0] = Colors.orange;
                                l1[1] = Colors.grey.shade200;
                                l1[2] = Colors.grey.shade200;
                                l1[3] = Colors.grey.shade200;
                                l1[4] = Colors.grey.shade200;
                                gst = double.parse(OR);
                                FP = (3 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Sample("3", l1[0])),
                        InkWell(
                            onTap: () {
                              setState(() {
                                l1[1] = Colors.orange;
                                l1[0] = Colors.grey.shade200;
                                l1[2] = Colors.grey.shade200;
                                l1[3] = Colors.grey.shade200;
                                l1[4] = Colors.grey.shade200;
                                gst = double.parse(OR);
                                FP = (5 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Sample("5", l1[1])),
                        InkWell(
                            onTap: () {
                              setState(() {
                                l1[2] = Colors.orange;
                                l1[1] = Colors.grey.shade200;
                                l1[0] = Colors.grey.shade200;
                                l1[3] = Colors.grey.shade200;
                                l1[4] = Colors.grey.shade200;
                                gst = double.parse(OR);
                                FP = (12 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Sample("12", l1[2])),
                        InkWell(
                            onTap: () {
                              setState(() {
                                l1[3] = Colors.orange;
                                l1[1] = Colors.grey.shade200;
                                l1[2] = Colors.grey.shade200;
                                l1[0] = Colors.grey.shade200;
                                l1[4] = Colors.grey.shade200;
                                gst = double.parse(OR);
                                FP = (18 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Sample("18", l1[3])),
                        InkWell(
                            onTap: () {
                              setState(() {
                                l1[4] = Colors.orange;
                                l1[1] = Colors.grey.shade200;
                                l1[2] = Colors.grey.shade200;
                                l1[3] = Colors.grey.shade200;
                                l1[0] = Colors.grey.shade200;
                                gst = double.parse(OR);
                                FP = (28 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Sample("28", l1[4])),
                      ],
                    )
                  ],
                ),
              )),
              Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("FINAL PRICE", style: TextStyle(fontSize: 20)),
                      //SizedBox(width: 75,),
                      Align(
                          alignment: Alignment.centerRight,
                          child:
                              Text("$FP Rs.", style: TextStyle(fontSize: 20))),
                    ],
                  ),
                ),
              ),
              Container(
                width: 250,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("CGST/SGST", style: TextStyle(fontSize: 25)),
                    Text("${Rate / 2}", style: TextStyle(fontSize: 25)),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '7';
                                });
                              },
                              child: Sample2("7")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '8';
                                });
                              },
                              child: Sample2("8")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '9';
                                });
                              },
                              child: Sample2("9")),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '4';
                                });
                              },
                              child: Sample2("4")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '5';
                                });
                              },
                              child: Sample2("5")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '6';
                                });
                              },
                              child: Sample2("6")),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        OR = '';
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 175,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text("AC",
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '1';
                                });
                              },
                              child: Sample2("1")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '2';
                                });
                              },
                              child: Sample2("2")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '3';
                                });
                              },
                              child: Sample2("3")),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '00';
                                });
                              },
                              child: Sample2("00")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '0';
                                });
                              },
                              child: Sample2("0")),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  OR = OR + '.';
                                });
                              },
                              child: Sample2(".")),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        OR = OR.substring(0, OR.length - 1);
                      });
                    },
                    child: Container(
                      width: 65,
                      height: 175,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.backspace_outlined,
                          color: Colors.white, size: 25),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Sample(String data, Color c12) {
    return Container(
      height: 30,
      width: 50,
      decoration:
          BoxDecoration(color: c12, borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: Text("$data%", style: TextStyle(fontSize: 10)),
    );
  }

  Widget Sample2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        color: Colors.grey.shade200,
        child: Text("$data",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,

            )),
      ),
    );
  }
}
