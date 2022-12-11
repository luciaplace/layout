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
            centerTitle: false,
            elevation: 0,


            title: Stack(children: [
              SvgPicture.asset(
                "assets/images/mainpage1/box_search.svg",
                height: 50,
                alignment: AlignmentDirectional(8.0, 0.0),
              ),
              Container(
                width: 280,
                margin: EdgeInsets.only(left: 17),
                child: TextField(

                ),
              )
            ]),
            actions: [
              IconButton(
                  icon: SvgPicture.asset(
                      "assets/images/mainpage1/icon_search.svg"),
                  onPressed: () {
                    print("mainbody");
                  })
            ],
          ),
          body: GestureDetector(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  //인기주류 10
                  Container(
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Column(
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
                          width: 130,
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
                          return Container(
                            height: 250,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.green)),
                            child: Column(
                              children: [
                                Container(
                                  height: 15,
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: SvgPicture.asset(
                                      "assets/images/mainpage1/rank.svg",
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                Stack(children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Stack(children: [
                                      SvgPicture.asset(
                                        "assets/images/mainpage1/box_1.svg",
                                        width: 150,
                                        height: 230,
                                      ),

                                      GestureDetector(
                                        child: Container(
                                          margin: EdgeInsets.only(right: 7),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.blue)),
                                          width: 160,
                                          height: 230,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 0, 5, 0),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                              children: [
                                                Stack(children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                            Colors.black)),
                                                    height: 140,
                                                    width: 250,
                                                    child: Image.asset(
                                                        'assets/images/mainpage1/drink_image.png'),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    height: 140,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color:
                                                            Colors.blue)),
                                                    child: Align(
                                                      alignment:
                                                      Alignment.bottomRight,
                                                      child: IconButton(
                                                        icon: Icon(Icons
                                                            .heart_broken_rounded),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                                Text(
                                                  "술이름",
                                                  style: TextStyle(
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                                Text("술 회사이름",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 13,
                                                        color: Colors.black38)),
                                                Text("생산지",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 13,
                                                        color: Colors.black38)),
                                                Text("도수",
                                                    style: TextStyle(
                                                        fontWeight:
                                                        FontWeight.bold,
                                                        fontSize: 13,
                                                        color: Colors.black38)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ]),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                SvgPicture.asset('assets/images/mainpage1/box_2.svg',
                  height: 120,
              ),
                Align(
                  alignment: AlignmentDirectional(0.0,-2.0),
                  child: Container(
                    height: 120,
                    width: 320,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 75, child: Text("내 취향에 딱 맞는 술은?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        ),
                        Expanded(
                          flex: 30, child: Row(
                          children: [
                            Text("TEST", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_outlined))
                          ],
                        ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )

          ]
      ),
    ),)
    ,
    )
    ,
    );
  }
}
