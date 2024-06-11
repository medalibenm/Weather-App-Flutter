import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff29B2DD),
            Color(0xff33AADD),
            Color(0xff2DC8EA)
          ], stops: [
            0,
            0.47,
            1
          ])),
          child: ListView(
            children: [
              Header(),
              Container(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/Design sans titre (6).png',
                      width: 300,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      '30º',
                      style: GoogleFonts.poppins(
                          fontSize: 60,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      'Precipitations',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      'Max.: 34º Min.: 28º',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Opacity(
                            opacity: 0.25,
                            child: Container(
                              height: 47,
                              width: 343,
                              decoration: BoxDecoration(
                                color: Color(0xff104084),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                        0.2), // Darker shadow color
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                    offset: Offset(
                                        0, 3), // Move the shadow down by 3
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          child: Container(
                            width: 343,
                            height: 47,
                            child: Row(children: [
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/noun-rain-2438520 1.svg'),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '18%',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ])),
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset('assets/Group.svg'),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          '67%',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ])),
                              Flexible(
                                  flex: 1,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/noun-wind-4507827 1.svg'),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Text(
                                          '25km/h',
                                          style: GoogleFonts.poppins(
                                              color: Colors.white),
                                        ),
                                      ])),
                            ]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Opacity(
                            opacity: 0.25,
                            child: Container(
                              height: 235,
                              width: 343,
                              decoration: BoxDecoration(
                                color: Color(0xff104084),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(
                                        0.2), // Darker shadow color
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                    offset: Offset(
                                        0, 3), // Move the shadow down by 3
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          child: Container(
                              height: 220,
                              width: 343,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Today',
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        width: 90,
                                      ),
                                      Text(
                                        'Mar, 10',
                                        style: GoogleFonts.poppins(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      HoursWidget(),
                                      HoursWidget(),
                                      HoverWidget(),
                                      HoursWidget(),
                                    ],
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(children: [
                      Align(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: 0.25,
                          child: Container(
                            height: 170,
                            width: 343,
                            decoration: BoxDecoration(
                              color: Color(0xff104084),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black
                                      .withOpacity(0.2), // Darker shadow color
                                  spreadRadius: 1,
                                  blurRadius: 6,
                                  offset:
                                      Offset(0, 3), // Move the shadow down by 3
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                          child: Container(
                        height: 170,
                        width: 343,
                        child: Column(children: [
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Next Forecast',
                                style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 47,
                              ),
                              SvgPicture.asset('assets/calendar.svg'),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DayWeather(),
                          DayWeather()
                        ]),
                      ))
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DayWeather extends StatelessWidget {
  const DayWeather({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 0),
      child: Row(
        children: [
          Text(
            'Monday',
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 28,
          ),
          SvgPicture.asset(
            'assets/Design sans titre (1).svg',
            width: 60,
          ),
          SizedBox(
            width: 51,
          ),
          Text(
            '31°C',
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 11,
          ),
          Text(
            '31°C',
            style: GoogleFonts.poppins(
                color: Colors.white.withOpacity(0.6),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

class HoursWidget extends StatelessWidget {
  const HoursWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      child: Column(
        children: [
          Text(
            '31°C',
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SvgPicture.asset(
            'assets/Design sans titre (1).svg',
            width: 85,
          ),
          Text('15.00',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

class HoverWidget extends StatelessWidget {
  const HoverWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 85,
      decoration: BoxDecoration(
        color: Color(0xff4899E3),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xff54C1FF), width: 2.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Darker shadow color
            spreadRadius: 1,
            blurRadius: 6,
            offset: Offset(0, 3), // Move the shadow down by 3
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '31°C',
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400),
          ),
          SvgPicture.asset(
            'assets/Design sans titre (1).svg',
            width: 85,
          ),
          Text('15.00',
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool _isSearching = false;
  TextEditingController _searchController = TextEditingController();
  double? width1 = 205;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Row(
        children: [
          SizedBox(
            width: 34,
          ),
          SvgPicture.asset('assets/localisation.svg'),
          SizedBox(
            width: 12,
          ),
          Text(
            'Fortaleza',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: Colors.white, fontSize: 18),
          ),
          SizedBox(
            width: width1,
          ),
          if (!_isSearching)
            InkWell(
              onTap: () {
                setState(() {
                  _isSearching = true;
                  width1 = 50;
                });
              },
              child: Container(
                child: SvgPicture.asset('assets/Vector.svg'),
              ),
            ),
          if (_isSearching)
            Container(
              width: 200,
              height: 45,
              padding: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                onSubmitted: (MediaQuery) {
                  setState(() {
                    _isSearching = false;
                    width1 = 205;
                  });
                },
                maxLines: 1,
                textAlignVertical: TextAlignVertical.center,
                controller: _searchController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Search',
                  hintStyle: const TextStyle(color: Colors.grey),
                  // suffixIconConstraints: const BoxConstraints(
                  //   maxHeight: 37.5,
                  //   minWidth: 30,
                  // ),
                  suffixIcon: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        _isSearching = false;
                        _searchController.clear();
                        width1 = 205;
                      });
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}