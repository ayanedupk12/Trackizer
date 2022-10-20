import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:untitled3/homescreens/spending_and_bidgets.dart';

// import '../tests/tests.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  @override
  late TabController _tabController;
  int tabindicator = 0;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List icons = [
    Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Color(0xFF1ED760), borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Image(image: AssetImage('assets/icons/spotify.png')))),
    Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Color(0xFFFF0000), borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Container(
                height: 17,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Center(
                    child: Image(
                        image: AssetImage('assets/icons/youtube.png')))))),
    Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image(image: AssetImage('assets/icons/onedive.png',),height: 25,width: 30,)),
          ],
        )),
  ];
  List iconnames = ['Spotify', 'Youtube', 'One Drive'];
  List appsprices = ['\$ 5.99', '\$ 6.99', '\$ 7.99'];

  Widget build(BuildContext context) {
    double yourPercentage = 0.5;
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: size.width,
          height: size.height - 110,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: size.height / 2,
                // height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30)),
                  color: Color(0xFF353542).withOpacity(0.5),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height / 40,
                    ),
                    Row(
                      children: [
                        Spacer(),
                        Icon(
                          Icons.settings_outlined,
                          color: Color(0xFFA2A2B5),
                          size: 30,
                        ),
                        SizedBox(
                          width: 20,
                        )
                      ],
                    ),
                    CircularPercentIndicator(
                        lineWidth: 10,
                        //todo: make edges rounded
                        radius: 135.0,
                        startAngle: 230,
                        progressColor: Color(0xFFFF7966),
                        percent: 1.1 * yourPercentage,
                        animation: true,
                        backgroundColor: Colors.transparent,
                        center: Column(
                          children: [
                            SizedBox(
                              height: size.height / 11,
                            ),
                            SizedBox(
                              width: size.height / 7,
                              height: size.height / 30,
                              child: Image(
                                image: AssetImage(
                                    'assets/startpageimages/logo.png'),
                              ),
                            ),
                            SizedBox(
                              height: size.height / 55,
                            ),
                            Text(
                              '\$1254',
                              style: GoogleFonts.inter(
                                  fontSize: 40,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: size.height / 140,
                            ),
                            Text(
                              'This mont bills',
                              style: GoogleFonts.inter(
                                fontSize: 12,
                                color: Color(0xFF83839C),
                              ),
                            ),
                            SizedBox(
                              height: size.height / 30,
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> SandBudgets()));
                              },
                              child: Container(
                                width: 120,
                                height: 32,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color:
                                        Colors.white.withOpacity(0.15)),
                                    gradient: LinearGradient(colors: [
                                      Colors.white.withOpacity(0.15),
                                      Colors.white.withOpacity(0.10),
                                    ])),
                                child: Center(
                                  child: Text(
                                    'See your budgets',
                                    style: GoogleFonts.inter(
                                      fontSize: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )),
                    Row(
                      children: [
                        Spacer(),
                        Container(
                          width: 104,
                          height: 68,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFCFCFFC).withOpacity(0.15),
                                    Color(0xFFCFCFFC).withOpacity(0),
                                  ]),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color:
                                  Color(0xFFCFCFFC).withOpacity(0.15))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 52,
                                height: 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                    color: Color(0xFFFFA699)),
                              ),
                              Spacer(),
                              Text(
                                'Active subs',
                                style: GoogleFonts.inter(
                                    fontSize: 12, color: Color(0xFF83839C)),
                              ),
                              Text(
                                '12',
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 104,
                          height: 68,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFCFCFFC).withOpacity(0.15),
                                    Color(0xFFCFCFFC).withOpacity(0),
                                  ]),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color:
                                  Color(0xFFCFCFFC).withOpacity(0.15))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 52,
                                height: 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                    color: Color(0xFFAD7BFF)),
                              ),
                              Spacer(),
                              Text(
                                'Highest subs',
                                style: GoogleFonts.inter(
                                    fontSize: 12, color: Color(0xFF83839C)),
                              ),
                              Text(
                                '\$19.99',
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 104,
                          height: 68,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFFCFCFFC).withOpacity(0.15),
                                    Color(0xFFCFCFFC).withOpacity(0),
                                  ]),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color:
                                  Color(0xFFCFCFFC).withOpacity(0.15))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 52,
                                height: 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15)),
                                    color: Color(0xFF7DFFEE)),
                              ),
                              Spacer(),
                              Text(
                                'Lowest subs',
                                style: GoogleFonts.inter(
                                    fontSize: 12, color: Color(0xFF83839C)),
                              ),
                              Text(
                                '\$5.99',
                                style: GoogleFonts.inter(
                                    fontSize: 14,
                                    color: Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        Spacer()
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.red,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFCFCFFC).withOpacity(0.15),
                          Color(0xFFCFCFFC).withOpacity(0),
                        ])),
                tabs: const [
                  Tab(
                    child: Text(
                      'Your subscriptions',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Upcoming bills',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Center(
                      child: ListView.builder(
                          itemCount: icons.length,
                          itemBuilder: (context, int index) {
                            return ListTile(
                              tileColor: Colors.red,
                              leading: icons[index],
                              title: Text(iconnames[index],style: GoogleFonts.inter(color: Colors.white),),
                              trailing: Text(appsprices[index],style: GoogleFonts.inter(color: Colors.white)),
                            );
                          }),
                    ),
                    Center(
                      child: ListView.builder(
                          itemCount: icons.length,
                          itemBuilder: (context, int index) {
                            return ListTile(
                              leading: icons[index],
                              title: Text(iconnames[index],style: GoogleFonts.inter(color: Colors.white)),
                              trailing: Text(appsprices[index],style: GoogleFonts.inter(color: Colors.white)),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // DefaultTabController(length: 2,
        //     child: TabBar(
        //       tabs: [
        //         Tab(
        //           icon: Icon(Icons.home,color: Colors.white),
        //         ),
        //         Tab(
        //           icon: Icon(Icons.add,color: Colors.white,),
        //         )
        //       ],
        //     )
        //
        // ),
        // SizedBox(height: 20,),
        // Container(
        //   width: double.infinity,
        //   height: double.infinity,
        //   color: Colors.yellow,
        //   child: TabBarView(
        //     children: [
        //       Icon(Icons.abc_outlined),
        //       Icon(Icons.card_giftcard),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
