// import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:dialysis_practice/utils/searchbar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatelessWidget {
  // final NotchBottomBarController? controller;
  const Dashboard({super.key, 
  // this.controller
  });

  @override
  Widget build(BuildContext context) {

    TextEditingController _searchController = TextEditingController();

    return Scaffold(




      // bottomNavigationBar: BottomNavigationBar(
        
      //   items: [
      //    BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle),
      //       label: 'Profile',
      //     ),
      // ]),
      floatingActionButton: FloatingActionButton(onPressed: () => "",),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      // floatingActionButton: ExpandableFab(distance: 80,
      //   type: ExpandableFabType.up,
      //   openButtonBuilder: DefaultFloatingActionButtonBuilder(backgroundColor: Color(0xff314CA3),
      //       fabSize: ExpandableFabSize.regular, child: const Icon(Icons.menu, color: Color(0xffD7E9FF),)),
      //   closeButtonBuilder:
      //       DefaultFloatingActionButtonBuilder(
      //       backgroundColor: Color(0xff314CA3),
      //           fabSize: ExpandableFabSize.regular,
      //           child: const Icon(Icons.close, color: Color(0xffD7E9FF),)),
      //   children: [
      //     FloatingActionButton(
      //       backgroundColor: Color(0xff314CA3),
      //       onPressed: (){},child: const Icon(Icons.person_add_alt_1_outlined,color: Color(0xffD7E9FF)
            
      //       )),
      //     FloatingActionButton(
      //       backgroundColor: Color(0xff314CA3),
      //       onPressed: (){},child: const Icon(Icons.schedule_rounded,color: Color(0xffD7E9FF)
      //       )),
      //     FloatingActionButton(
      //       backgroundColor: Color(0xff314CA3),
      //       onPressed: (){},child: const Icon(Icons.library_books_sharp,color: Color(0xffD7E9FF)
      //       )),
      //   ],
      // ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(115),
          child: Container(
            padding: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                color: Color(0xffEAF3FE),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(50))),
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Color(0xffEAF3FE),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to",
                        style: GoogleFonts.inter(
                            color: Color(0xff314CA3), fontSize: 16),
                      ),
                      Text("GRAPES IDMR",
                          style: GoogleFonts.inter(
                              color: Color(0xff314CA3),
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.logout,
                        color: Color(0xff314CA3),
                        size: 27,
                      ),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "Dialysis Management System",
                  style: GoogleFonts.instrumentSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff314CA3)),
                )
              ],
            ),
          )),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 12,left: 12,right: 12),
              width: double.infinity,
              height: 240,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Dialysis Daily Statistics",
                        style: GoogleFonts.roboto(
                            color: Color(0xff314CA3),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      )),
                  Expanded(
                    child: PieChart(
                      PieChartData(
                        sectionsSpace: 0,
                        centerSpaceRadius: 38, // Radius of the center circle
                        sections: [
                          PieChartSectionData(
                            color: Color(0xff00BA54),
                            value: 10,
                            title: '2',
                            radius: 38,
                            titleStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          PieChartSectionData(
                            color: Color(0xff104D96),
                            value: 60,
                            title: '12',
                            radius: 38,
                            titleStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          PieChartSectionData(
                            color: Color(0xff00A4F6),
                            value: 30,
                            title: '6',
                            radius: 38,
                            titleStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(padding: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    // color: Color(0xffB7D7FD),
                    color: Color(0xffEAF3FE),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff104D96),
                                shape: BoxShape
                                    .circle,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Started"),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff00A4F6),
                                shape: BoxShape
                                    .circle,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Pending"),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Color(0xff00BA54),
                                shape: BoxShape
                                    .circle,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text("Completed"),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                child: SearchInput(
                  textController: _searchController,
                  hintText: "Search by MRN or Name",),
              ),

              Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: Color(0xffC3DDFD),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 14, 15, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: GoogleFonts.roboto(
                            color: Color(0xff314CA3),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
              ),
              Icon(Icons.date_range_outlined)
            ],
          ),
        ),
        // ListView
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffEAF3FE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("data"),
                            Text("data"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("data"),
                            Text("data"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  ),
)

        ],
      ),
    );
  }
}
