import 'package:ask_while_youcan/try_another_one/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ll = false;



   TextEditingController _controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF5B8EBD),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            "Record their answer",
                            style: TextStyle(
                              color: Color(0xff4F7C87),
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              side: BorderSide(
                                color: Color(0xff4F7C87),
                                width: 2,
                              ))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "Grow close to yours loved ones \n by asking them then question",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: ll,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 700),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          c = copy;
                        });
                      },
                      child: Text(c),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Container(
                    alignment: Alignment.center,
                    height: 160,
                    width: 800,
                    child: InkWell(
                      onTap: () {
                        TextOverflow.clip;
                        setState(() {
                          z = x;
                          ll = true;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 5, left: 5, right: 5, bottom: 5),
                        child: Text(
                          z,
                          style: TextStyle(
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.teal, width: 2.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Container(
                                  height: 400,
                                  width: 700,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Text(
                                                  "Download the best \n 100 questions",
                                                  style: TextStyle(
                                                      color: Colors.teal,
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "We'd love to send you an E-book of the \n 100 top questions you can ask your \n loved ones to get to know them better ",
                                                  style: TextStyle(
                                                    color: Colors.teal,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Container(
                                                  height:40,
                                                  width: 200,
                                                 child: TextFormField(

                                                  controller: _controller,

                                                   decoration: InputDecoration(
                                                     focusColor: Colors.pink,
                                                                  hintText: "E-mail",
                                                     border: OutlineInputBorder(
                                                              gapPadding: 4.0
                                                     ),
                                                   ),
                                                 ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {},
                                                    child:
                                                        Text("Get the E-BOOK"))
                                              ],
                                            ),
                                            Spacer(),
                                            Column(
                                              children: [
                                           
                                                IconButton(
                                                  onPressed: () {},
                                                  icon: Image.asset(
                                                      "assets/images/xx.png",
                                                      height: 20,
                                                      width: 20,
                                                      color: Colors.teal),
                                                ),
                                                Container(
                                                    height: 300,
                                                    width: 400,
                                                    child: Image.asset(
                                                        "assets/images/ss.png")),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/copy.png",
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "copy this question",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    OutlinedButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: "Finish",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.teal,
                            textColor: Colors.white,
                          );
                          setState(() {
                            z = text1;
                            text1 = text2;
                            text2 = text3;
                            text3 = text4;
                            text4 = text5;
                            text5 = text6;
                          });
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                color: Color(0xff4F7C87), width: 2.0)),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/fffss.png",
                              color: Color(0xff4F7C87),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Try another one",
                              style: TextStyle(color: Color(0xff4F7C87)),
                            ),
                          ],
                        ))
                  ],
                ),
                Spacer(),
                Text(
                  "Developed By Shawon",
                  style: TextStyle(color: Color(0xff4F7C87), fontSize: 10),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
