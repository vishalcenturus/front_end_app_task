import 'package:flutter/material.dart';

class ChooseRightWord extends StatefulWidget {
  const ChooseRightWord({ Key? key }) : super(key: key);

  @override
  State<ChooseRightWord> createState() => _ChooseRightWordState();
}

class _ChooseRightWordState extends State<ChooseRightWord> {
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
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  child: Container(
                    height: 20,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ),
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
            SizedBox(height: 30),
            Text(
              "Now complete the",
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "sentence",
              style: TextStyle(
                letterSpacing: 1,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 40),
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
            SizedBox(height: 40),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xff9054F6),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Colors.black.withOpacity(0.1),
                        ),
                        ),
                        child: Center(
                      child: Text(
                        "That's",
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(right: 30,left: 30),
                  child: Text(
                    "me.",
                    style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Text(
              "Choose thee right word : ",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              width: width / 1.5,
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 100,
                  ),
                  SizedBox(width: 30),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Colors.black.withOpacity(0.1),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "not",
                        style: TextStyle(
                          color: Colors.black,
                          letterSpacing: 1,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
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
        child: Column(
          children: [
            Text(
                "I can't Listen right now .",
                style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 1,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
            Center(
              child: InkWell(
                onTap: () {},
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
                      "OK",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  
  }
}