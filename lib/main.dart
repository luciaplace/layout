import 'package:flutter/material.dart';
import 'package:layout/style/common_style.dart' as style;
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: style.titleTheme,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: TextField(
            /*      onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context)=> ??));
            },
        */
            obscureText: false,
            autofocus: false,
            decoration: InputDecoration(
              hintText: '검색창',
              //prefixIcon: Icon(Icons.search)
            ),
          ),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print("mainbody");
                })
          ],
        ),
        body: GestureDetector(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  //인기주류 10
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "인기주류 ",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "TOP10",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "더보기",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ))
                          ],
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 3),
                          child: Text(" 베스트셀링 주류를 만나보세요.",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45))),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 250,
                        child: ListView.builder(
                            itemCount: 8,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) {
                              return Stack(
                                children : [
                                  SvgPicture.asset("assets/images/box_1.svg",
                                  width: 150,
                                  height: 230,),
                                  GestureDetector(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 7),
                                    decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
                                    width: 160,
                                    height:230,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5,0,5,0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children:  [
                                          Stack(
                                            children: [ Container(
                                              decoration: BoxDecoration(border:Border.all(color: Colors.black) ),
                                              height: 140,
                                              width: 250,
                                              child: Image.asset('assets/images/drink_image.png'),
                                            ),
                                              Container(
                                                width:double.infinity,
                                                height:140,
                                                decoration : BoxDecoration(border: Border.all(color: Colors.blue)),
                                                child: Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: IconButton(
                                                    icon: Icon(Icons.heart_broken_rounded),
                                                    onPressed: (){},
                                                  ),
                                                ),
                                              ),
                                         ]),
                                          Text("술이름", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
                                          Text("술 회사이름",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black38)),
                                          Text("생산지",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black38)),

                                          Text("도수",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black38)),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]);
                            }),
                      ),
                    ],
                  ),
                  Container(
                    height: 70,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
