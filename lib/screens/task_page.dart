import 'package:flutter/material.dart';
import 'package:task_app/screens/randomly_page.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  bool firstpage = true;
  bool secondpage = true;

  @override
  Widget build(BuildContext context) {
    
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.close,
                    size: 30,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child:Container(
                          height: 20,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                            firstpage ?  Container(
                                height: 20,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ): secondpage ? Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ): Container(
                                    height: 20,
                                    width: 75,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                            ],
                          ),
                        )
                ),
                Container(
                  height: 30,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.amberAccent,
                      border: Border.all(
                        width: 2,
                        color: Colors.amber.shade500,
                      )),
                  child: Icon(
                    Icons.star,
                    size: 20,
                    color: Colors.yellow.shade800,
                  ),
                ),
                Text(
                  "0",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            SizedBox(height: 100),
            Text(
              "Just listen the sentence",
              style: TextStyle(
                  letterSpacing: 1, fontSize: 28, fontWeight: FontWeight.w400),
            ),
            Text(
              "carefully",
              style: TextStyle(
                  letterSpacing: 1, fontSize: 28, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 30),
            Text(
              "(question will be asked in the end)",
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 16,
                // fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            SizedBox(height: 100),
            Text(
              firstpage
                  ? "I got a discount"
                  : secondpage
                      ? "It's real bargain"
                      : "That's a steel",
              style: TextStyle(
                  letterSpacing: 1, fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Color(0xff9054F6),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(
                Icons.volume_up,
                size: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            // color: Colors.white,
            ),
        height: 100,
        child: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                firstpage = false;
              });
            },
            child: firstpage
                ? Container(
                    height: 40,
                    width: width / 1.4,
                    decoration: BoxDecoration(
                        color: Color(0xff9054F6),
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xff9054F6).withOpacity(0.8),
                              Color(0xff9054F6)
                            ])),
                    child: Center(
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )
                : secondpage
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            secondpage = false;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: width / 1.4,
                          decoration: BoxDecoration(
                              color: Color(0xff9054F6),
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color(0xff9054F6).withOpacity(0.8),
                                    Color(0xff9054F6)
                                  ])),
                          child: Center(
                            child: Text(
                              "NEXT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RandomPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 40,
                          width: width / 1.4,
                          decoration: BoxDecoration(
                              color: Color(0xff9054F6),
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color(0xff9054F6).withOpacity(0.8),
                                    Color(0xff9054F6)
                                  ])),
                          child: Center(
                            child: Text(
                              "NEXT",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
