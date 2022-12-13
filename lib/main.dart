import 'package:flutter/material.dart';
import 'package:layout/style/common_style.dart' as style;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:get/get.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PageController? pageViewController;

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
              child: TextField(),
            )
          ]),
          actions: [
            IconButton(
                icon:
                    SvgPicture.asset("assets/images/mainpage1/icon_search.svg"),
                onPressed: () {
                  print("mainbody");
                })
          ],
        ),
        body: GestureDetector(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              //인기주류 10
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
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
                              width: 105,
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
                        margin: EdgeInsets.only(top: 8),
                        height: 250,
                        child: ListView.builder(
                            itemCount: 8,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, i) {
                              return Container(
                                height: 250,
                                width: 166,

                                child: Stack(children: [
                                  Column(
                                    children: [
                                      Container(
                                        height: 18,

                                      ),
                                      Stack(children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Stack(children: [
                                            SvgPicture.asset(
                                              "assets/images/mainpage1/box_1.svg",
                                              width: 150,
                                              height: 230,
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                margin:
                                                    EdgeInsets.only(right: 7),
                                                width: 160,
                                                height: 230,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          5, 0, 5, 0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    children: [
                                                      Stack(children: [
                                                        Container(
                                                          height: 140,
                                                          width: 250,
                                                          child: Image.asset(
                                                              'assets/images/mainpage1/drink_image.png'),
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 140,
                                                          child: Align(
                                                            alignment: Alignment
                                                                .bottomRight,
                                                            child: IconButton(
                                                              icon: Icon(Icons.favorite_outline_outlined),
                                                              onPressed: () {},
                                                            ),
                                                          ),
                                                        ),
                                                      ]),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 5),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  "술이름",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                Text("술 회사이름",
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .black38)),
                                                                Text("생산지",
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .black38)),
                                                                Text("도수",
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .black38)),
                                                              ]))
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
                                  Align(
                                    alignment: AlignmentDirectional(0.8,-0.91),
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/mainpage1/rank.svg",
                                          width: 30,
                                          height: 30,
                                        ),
                                        Container(
                                          width: 31,
                                          height: 31,
                                          child: Align(
                                            alignment:AlignmentDirectional(-0.41,0.0),
                                            child: Text((i+1).toString()),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ]),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              /*
          Container(
                margin: EdgeInsets.only(top: 10),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/images/mainpage1/box_2.svg',
                      height: 120,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, -2.0),
                      child: Container(
                        height: 120,
                        width: 320,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 75,
                              child: Text(
                                "내 취향에 딱 맞는 술은?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: Row(
                                children: [
                                  Text(
                                    "TEST",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                          Icons.arrow_forward_ios_outlined))
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
              */
              //내 취향
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                width: double.infinity,
                child: Stack(children: [
                  PageView(
                    controller: pageViewController ??=
                        PageController(initialPage: 0),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              'assets/images/mainpage1/box_2.svg',
                              height: 120,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, -0.88),
                              child: Container(
                                height: 120,
                                width: 320,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 75,
                                      child: Text(
                                        "내 취향에 딱 맞는 술은?",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 30,
                                      child: Row(
                                        children: [
                                          Text(
                                            "TEST",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: Icon(Icons
                                                  .arrow_forward_ios_outlined))
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Text("두번째 페이지"),
                      )
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 1.25),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: smooth_page_indicator.SmoothPageIndicator(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        count: 2,
                        axisDirection: Axis.horizontal,
                        onDotClicked: (i) {
                          pageViewController!.animateToPage(
                            i,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        effect: smooth_page_indicator.ExpandingDotsEffect(
                          expansionFactor: 2,
                          spacing: 8,
                          radius: 16,
                          dotWidth: 16,
                          dotHeight: 16,
                          dotColor: Color(0xFF9E9E9E),
                          activeDotColor: Color(0xFF3F51B5),
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ),
                ]),
              ),

              //쌀쌀해진 날씨
              Container(
                height: 273,
                margin: EdgeInsets.only(top: 15),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/images/mainpage1/box_3.svg",
                      width: double.infinity,
                      alignment: AlignmentDirectional(0.0, 0.0),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.1),
                      child: Container(
                        height: 210,
                        width: 370,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 35,
                                child: Container(
                                  child: Image.asset(
                                      'assets/images/mainpage1/drink_image.png',
                                      height: 160),
                                )),
                            Expanded(
                                flex: 65,
                                child: Container(
                                    child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.5),
                                  child: Container(
                                    width: double.infinity,
                                    height: 150,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "쌀쌀해진 날씨,",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "글렌파 글래스",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "를 추천해요",
                                              style: TextStyle(fontSize: 15),
                                            )
                                          ],
                                        ),
                                        Text(""),
                                        Text("추운 겨울 몸을 녹여줄 위스키",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                        Text(""),
                                        Text("추천 페어링",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold)),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 5, 20, 0),
                                                child: Text(
                                                  "#카나페",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11),
                                                )),
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 5, 20, 0),
                                                child: Text(
                                                  "#올리브",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11),
                                                )),
                                            Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 5, 20, 0),
                                                child: Text(
                                                  "#견과류",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11),
                                                ))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ))),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
//추천주류
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "홍길동님을 위한 ",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              "추천주류",
                              style: TextStyle(
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            SizedBox(
                              width: 30,
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
                          child: const Text(" 내 취향에 딱 맞는 제품을 추천받아 보세요.",
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
                                height: 230,
                                child: Column(
                                  children: [
                                    Stack(children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 1.0),
                                        child: Stack(children: [
                                          SvgPicture.asset(
                                            "assets/images/mainpage1/box_1.svg",
                                            width: 150,
                                            height: 230,
                                          ),
                                          GestureDetector(
                                            child: Container(
                                              margin: EdgeInsets.only(right: 7),
                                              width: 160,
                                              height: 230,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 0, 5, 0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .start,
                                                  children: [
                                                    Stack(children: [
                                                      Container(
                                                        height: 140,
                                                        width: 250,
                                                        child: Image.asset(
                                                            'assets/images/mainpage1/drink_image.png'),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        height: 140,
                                                        child: Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: IconButton(
                                                            icon: const Icon(Icons.favorite_outline_outlined),
                                                            onPressed: () {},
                                                          ),
                                                        ),
                                                      ),
                                                    ]),
                                                    Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(left: 5),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: const [
                                                              Text(
                                                                "술이름",
                                                                style: TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                        .black),
                                                              ),
                                                              Text("술 회사이름",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .black38)),
                                                              Text("생산지",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .black38)),
                                                              Text("도수",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          12,
                                                                      color: Colors
                                                                          .black38)),
                                                            ]))
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
 //얘기해요
              Container(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text(
                              "00에서 얘기해요 ",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 110,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
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
                          child: const Text(" 같은 취향을 가진 사람들과 자유롭게 대화해요.",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45))),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        height: 450,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 50,
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 50,
                                        //첫번째 칸
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 180,
                                                height: 180,
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        height: 160,
                                                        width: 160,
                                                        decoration: const BoxDecoration(
                                                            image: DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: AssetImage(
                                                                    'assets/images/mainpage1/cocktail2.png'))),
                                                      ),
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/images/mainpage1/box_4.svg',
                                                      width: 170,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3),
                                                child: Text(
                                                  "잠실 칵테일 맛집 다녀왔어요!\n 추천해요",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black54),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 50,
                                        //세번째 칸
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 180,
                                                height: 180,
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        height: 150,
                                                        width: 150,
                                                        decoration: const BoxDecoration(
                                                            image: DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: AssetImage(
                                                                    'assets/images/mainpage1/cocktail2.png'))),
                                                      ),
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/images/mainpage1/box_6.svg',
                                                      width: 170,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3),
                                                child: Text(
                                                  "잠실 칵테일 맛집 다녀왔어요!",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black54),
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 50,
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                        flex: 50,
                                        //두번째 칸
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 180,
                                                height: 180,
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        height: 150,
                                                        width: 150,
                                                        decoration: const BoxDecoration(
                                                            image: DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: AssetImage(
                                                                    'assets/images/mainpage1/cocktail1.png'))),
                                                      ),
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/images/mainpage1/box_5.svg',
                                                      width: 170,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3),
                                                child: Text(
                                                  "잠실 칵테일 맛집 다녀왔어요!",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black54),
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 50,
                                        //네번째 칸
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 180,
                                                height: 180,
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        height: 150,
                                                        width: 150,
                                                        decoration: const BoxDecoration(
                                                            image: DecorationImage(
                                                                fit:
                                                                    BoxFit.fill,
                                                                image: AssetImage(
                                                                    'assets/images/mainpage1/cocktail1.png'))),
                                                      ),
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/images/mainpage1/box_7.svg',
                                                      width: 170,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const Padding(
                                                padding:
                                                    EdgeInsets.only(left: 3),
                                                child: Text(
                                                  "잠실 칵테일 맛집 다녀왔어요!",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black54),
                                                ),
                                              )
                                            ],
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //하단바

              Container(
                height: 130,
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/images/mainpage1/nav_bg.svg',
                      width: double.infinity,
                      height: double.maxFinite,
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.88, 0.75),
                      child: IconButton(
                        icon: SvgPicture.asset(
                            'assets/images/mainpage1/nav_icon.svg',
                            width: 50,
                            height: 50),
                        onPressed: () {},
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.45, 0.75),
                      child: IconButton(
                        icon: SvgPicture.asset(
                            'assets/images/mainpage1/nav_icon_2.svg',
                            width: 50,
                            height: 50),
                        onPressed: () {},
                      ),
                    ),
                    Align(
                        heightFactor: 300,
                        widthFactor: 300,
                        alignment: AlignmentDirectional(0.0, -0.1),
                        child: Container(
                          width: 80,
                          height: 80,
                          child: IconButton(
                            icon: SvgPicture.asset(
                              'assets/images/mainpage1/nav_icon_3.svg',
                              width: 57,
                              height: 57,
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(300),
                                  ),
                                ),
                                builder: (context) {
                                  return Container(
                                    height: 1300,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.fitHeight,
                                      image: AssetImage(
                                          'assets/images/mainpage1/bricks.png'),
                                    )),
                                    child: Stack(
                                      children: [
                                        Align(
                                            alignment: AlignmentDirectional(
                                                0.0, -0.99),
                                            child: Container(
                                              height: 200,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black)),
                                              child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -1.3),
                                                  child: SvgPicture.asset(
                                                      'assets/images/mainpage1/light.svg')),
                                            )),
                                        Align(
                                          child: Text("000님의 컬렉션"),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        )),
                    Align(
                      alignment: AlignmentDirectional(0.45, 0.75),
                      child: IconButton(
                        icon: SvgPicture.asset(
                            'assets/images/mainpage1/nav_icon_4.svg'),
                        onPressed: () {},
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.86, 0.75),
                      child: IconButton(
                        icon: SvgPicture.asset(
                            'assets/images/mainpage1/nav_icon_5.svg'),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
