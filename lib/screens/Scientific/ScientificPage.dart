
// ignore_for_file: no_leading_underscores_for_local_identifiers, file_names, non_constant_identifier_names

import 'package:abwabmaftoha/screens/Scientific/Choise/ENS.dart';
import 'package:abwabmaftoha/screens/Scientific/Choise/ES.dart';
import 'package:abwabmaftoha/screens/Scientific/Choise/LMD1.dart';
import 'package:abwabmaftoha/screens/Scientific/Choise/SYSCLASS.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Scientificpage extends StatefulWidget {
  const Scientificpage({super.key});

  @override
  State<Scientificpage> createState() => _ScientificpageState();
}
  // for the first pageview
  final PageController _pageController = PageController();
  // ignore: unused_element
  int _currentPage = 0;
  // for the second pageview
  final PageController _pageController1 = PageController(viewportFraction: 0.8);
  final PageController _pageController2 = PageController(viewportFraction: 0.8);
  final PageController _pageController3 = PageController(viewportFraction: 0.8);
  int _currentPage1 = 0;
  int _currentPage2 = 0;
  int _currentPage3 = 0;
  const int _pageCount = 3;
  const int _pageCount3 = 2;
  int Npage = 0 ;


  
 // for the first pageview
  Widget _buildPage({required Widget content}) {
    return content  ;
  }



class _ScientificpageState extends State<Scientificpage> {
  @override
  Widget build(BuildContext context) {
    

   // for the second Pageview
  Widget _getPageContent1(int index) {
    switch (index % 3) {
      case 0:
        return Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
          decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
          borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
               Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  ES( Npage : Npage = 1 ),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image4.png')) ,
                   Text(
                    'مدارس عليا (مهندس)' ,
                       style: GoogleFonts.kufam(
                       color: Colors.black ,
                       fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )           
                ],
              ),
            ),
          ),
        );
      case 1:
        return Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
           decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
              Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  LMD1( Npage : Npage = 1 ),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image5.png')) ,
                   Text(
                    'ليسانس-ماستر-دكتوراه' ,
                      style: GoogleFonts.kufam(
                      color: Colors.black ,
                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )           
                ],
              ),
            ),
          ),
        );
      case 2:
        return Container(     
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
            decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
              Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  ENS(),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image6.png')) ,
                   Text(
                    'مدارس عليا للأساتذة' ,
                      style: GoogleFonts.kufam(
                      color: Colors.black ,
                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )
                ],
              ),
            ),
          ),
        );
      default:
        return const Column(
        );
    }
  } 
   // for the second Pageview
    Widget _buildPage1({required Widget content}) {
    return content ;
  }
   // for the second Pageview
 Widget _getPageContent2(int index) {
    switch (index % 3) {
      case 0:
        return         Container(     
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
            decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
              Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  SYSCLASS(),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image10.png')) ,
                   Text(
                    'التخصصات الطبية' ,
                      style: GoogleFonts.kufam(
                      color: Colors.black ,
                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )
                ],
              ),
            ),
          ),
        );
      case 1:
        return Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
           decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
              Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  LMD1( Npage : Npage = 2 ),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image5.png')) ,
                   Text(
                    'ليسانس-ماستر-دكتوراه' ,
                      style: GoogleFonts.kufam(
                      color: Colors.black ,
                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )           
                ],
              ),
            ),
          ),
        );
      case 2:
        return Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
          decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
          borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
              Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  ES( Npage : Npage = 2 ),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image4.png')) ,
                   Text(
                    'مدارس عليا (مهندس)' ,
                       style: GoogleFonts.kufam(
                       color: Colors.black ,
                       fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )           
                ],
              ),
            ),
          ),
        ); 

      default:
        return const Column(
        );
    }
  } 
   Widget _getPageContent3(int index) {
    switch (index % 2) {
      case 0:
        return Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
          decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
          borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
              Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  ES( Npage : Npage = 3 ),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image4.png')) ,
                   Text(
                    'مدارس عليا (مهندس)' ,
                       style: GoogleFonts.kufam(
                       color: Colors.black ,
                       fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )           
                ],
              ),
            ),
          ),
        );
      case 1:
        return Container(
          margin: EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).height/80),
           decoration: BoxDecoration(
            border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 2 ,
            ),
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
            onTap: () {
              Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  LMD1( Npage : Npage = 3 ),
                     ));
            },
            child: Ink(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image(
                    height: MediaQuery.sizeOf(context).height /5,
                    image: const AssetImage('assets/image5.png')) ,
                   Text(
                    'ليسانس-ماستر-دكتوراه' ,
                      style: GoogleFonts.kufam(
                      color: Colors.black ,
                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                      fontWeight: FontWeight.w600)
                   )           
                ],
              ),
            ),
          ),
        );
      default:
        return const Column(
        );
    }
  } 
 // for the second Pageview
  Widget _buildPageIndicator1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_pageCount, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 10.0,
          width: _currentPage1 % _pageCount == index ? 10.0 : 10.0,
          decoration: BoxDecoration(
            color: _currentPage1 % _pageCount == index ? const Color.fromARGB(255, 8, 141, 218) : Colors.grey,
            borderRadius: BorderRadius.circular(5.0),
          ),
        );
      }),
    );
  }
    Widget _buildPageIndicator2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_pageCount, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 10.0,
          width: _currentPage2 % _pageCount == index ? 10.0 : 10.0,
          decoration: BoxDecoration(
            color: _currentPage2 % _pageCount == index ? const Color.fromARGB(255, 8, 141, 218) : Colors.grey,
            borderRadius: BorderRadius.circular(5.0),
          ),
        );
      }),
    );
  }
      Widget _buildPageIndicator3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_pageCount3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 10.0,
          width: _currentPage3 % _pageCount3 == index ? 10.0 : 10.0,
          decoration: BoxDecoration(
            color: _currentPage3 % _pageCount3 == index ? const Color.fromARGB(255, 8, 141, 218) : Colors.grey,
            borderRadius: BorderRadius.circular(5.0),
          ),
        );
      }),
    );
  }
 

  // for the first pageview
      List<Widget> _buildPages() {
            return [
                    _buildPage(
                      content: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [  
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height /40,
                              ),                       
                              Column(
                                children: [
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image(
                                    height: MediaQuery.sizeOf(context).height / 15,
                                    image: const AssetImage('assets/image3.png')
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width /20,
                                    ),
                                    Text(
                                      'تخصصات تقنية' ,
                                      style: GoogleFonts.kufam(
                                      color: Colors.black ,
                                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                                      fontWeight: FontWeight.w600)
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width/30,
                                    ),
                                    IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.angleRight),
                                    color: const Color.fromARGB(255, 8, 141, 218) ,
                                    iconSize: MediaQuery.sizeOf(context).height/25,
                                    onPressed: () {
                                      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                                    },
                                     ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height / 50,
                              ),
                                Center(
                                  child: SizedBox(
                                  height: 0.28*MediaQuery.sizeOf(context).height ,
                                  child: PageView.builder(
                                    controller: _pageController1,
                                    onPageChanged: (int page) {
                                      setState(() {
                                        _currentPage1 = page % _pageCount;
                                      });
                                    },
                                    itemBuilder: (context, index) {
                                      return _buildPage1(
                                        content: _getPageContent1(index)
                                      );
                                    },
                                  ),
                                                            ),
                                ),
                                  SizedBox(height: MediaQuery.sizeOf(context).height / 40),
                                  _buildPageIndicator1(),
                                ],
                              ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height /40 ,
                                ),
                          
                                             
                            ],
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              Image(
                                height: 0.4*MediaQuery.sizeOf(context).height,
                                image: const AssetImage('assets/image8.png'),
                                  ),
                                    ],
                                )), 
                        ],
                      )
                    ),
                    // Here the second Page for The medical Specialities
              _buildPage(
                content: Stack(
                  children: [
                    Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [  
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height /40,
                              ),                       
                              Column(
                                children: [
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.angleLeft),
                                    color: const Color.fromARGB(255, 8, 141, 218) ,
                                    iconSize: MediaQuery.sizeOf(context).height/25,
                                    onPressed: () {
                                      _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                                    },
                                     ),
                                  Image(
                                    height: MediaQuery.sizeOf(context).height / 15,
                                    image: const AssetImage('assets/image9.png')
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width /20,
                                    ),
                                    Text(
                                      'علوم الطبيعة والحياة' ,
                                      style: GoogleFonts.kufam(
                                      color: Colors.black ,
                                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                                      fontWeight: FontWeight.w600)
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width/30,
                                    ),
                                    IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.angleRight),
                                    color: const Color.fromARGB(255, 8, 141, 218) ,
                                    iconSize: MediaQuery.sizeOf(context).height/25,
                                    onPressed: () {
                                      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                                    },
                                     ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height / 50,
                              ),
                                Center(
                                  child: SizedBox(
                                  height: 0.28*MediaQuery.sizeOf(context).height ,
                                  child: PageView.builder(
                                    controller: _pageController2,
                                    onPageChanged: (int page) {
                                      setState(() {
                                        _currentPage2 = page % _pageCount;
                                      });
                                    },
                                    itemBuilder: (context, index) {
                                      return _buildPage1(
                                        content: _getPageContent2(index)
                                      );
                                    },
                                  ),
                                                            ),
                                ),
                                  SizedBox(height: MediaQuery.sizeOf(context).height / 40),
                                  _buildPageIndicator2(),
                                ],
                              ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height /40 ,
                                ),
                    
                                          
                            ],
                          ),
                          Positioned(
                           bottom: 0,
                           left: 0,
                           right: 0,
                           child:  Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                           Image(
                              height: 0.35*MediaQuery.sizeOf(context).height,
                              image: const AssetImage('assets/image7.png'),
                              ),
                              ],
                          )),    
                  ],
                )
              ),
              _buildPage(
                content: Stack(
                  children: [
                    Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [  
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height /40,
                              ),                       
                              Column(
                                children: [
                                Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                   IconButton(
                                    icon: const FaIcon(FontAwesomeIcons.angleLeft),
                                    color: const Color.fromARGB(255, 8, 141, 218) ,
                                    iconSize: MediaQuery.sizeOf(context).height/25,
                                    onPressed: () {
                                      _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                                    },
                                     ),
                                  Image(
                                    height: MediaQuery.sizeOf(context).height / 15,
                                    image: const AssetImage('assets/image11.png')
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width /20,
                                    ),
                                    Text(
                                      'تخصصات إقتصادية' ,
                                      style: GoogleFonts.kufam(
                                      color: Colors.black ,
                                      fontSize: MediaQuery.sizeOf(context).height/40 ,
                                      fontWeight: FontWeight.w600)
                                    ),
                                    SizedBox(
                                      width: MediaQuery.sizeOf(context).width/30,
                                    ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height / 50,
                              ),
                                Center(
                                  child: SizedBox(
                                  height: 0.28*MediaQuery.sizeOf(context).height ,
                                  child: PageView.builder(
                                    controller: _pageController3,
                                    onPageChanged: (int page) {
                                      setState(() {
                                        _currentPage3 = page % _pageCount3;
                                      });
                                    },
                                    itemBuilder: (context, index) {
                                      return _buildPage1(
                                        content: _getPageContent3(index)
                                      );
                                    },
                                  ),
                                                            ),
                                ),
                                  SizedBox(height: MediaQuery.sizeOf(context).height / 40),
                                  _buildPageIndicator3(),
                                ],
                              ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height /40 ,
                                ),
                    
                                          
                            ],
                          ),
                          Positioned(
                           bottom: 0,
                           left: 0,
                           right: 0,
                           child:  Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                           Image(
                              height: 0.38*MediaQuery.sizeOf(context).height,
                              image: const AssetImage('assets/image27.png'),
                              ),
                              ],
                          )),    
                  ],
                )
              ),
            ];
          } 
      // for the first pageview      
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            color: Colors.white,
            iconSize: MediaQuery.sizeOf(context).height/28,
            onPressed:() {
              showDialog(
  context: context,
  builder: (BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height / 40),
      ),
      backgroundColor: const Color.fromARGB(255, 8, 141, 218), // Set the background color to match the page
      child: DefaultTabController(
        initialIndex: 1,
        length: 2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             TabBar(
              labelColor: Colors.white,
              labelStyle: GoogleFonts.kufam(
                    color: Colors.white ,
                    fontSize: MediaQuery.sizeOf(context).height/60 ,
                    fontWeight: FontWeight.w500
            ),
              unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              isScrollable: true,
              tabs: const [
                Tab(text: 'المدارس العليا' ,),
                Tab(text: 'ليسانس-ماستر-دكتوراه'),
              ],
            ),
            Container(
              height: MediaQuery.sizeOf(context).height / 3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(MediaQuery.sizeOf(context).height / 40),bottomRight: Radius.circular(MediaQuery.sizeOf(context).height / 40))
              ),
              child:  TabBarView(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:  MediaQuery.sizeOf(context).width/20,vertical:MediaQuery.sizeOf(context).height/40 ) ,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                   'نظام دراسي كلاسيكي يمتد لخمس سنوات مقسم إلى طورين:' ,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.kufam(
                                    color: Colors.black ,
                                    fontSize: MediaQuery.sizeOf(context).height/62 ,
                                    fontWeight: FontWeight.w500)
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height/80,
                                ),
                          Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                   'الطور الأول :مرحلة تحضيرية (جذع مشترك) مدتها عامين بعد إنتهاء العامين الأولين يتعين على الطالب إجتياز إمتحان الانتقال إلى الطور الثاني' ,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.kufam(
                                    color: Colors.black ,
                                    fontSize: MediaQuery.sizeOf(context).height/62 ,
                                    fontWeight: FontWeight.w500)
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height/80,
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                   'الطور الثاني : في حال نجاح الطالب في الامتحان ينتقل إلى الطور الثاني الذي يستغرق ثلاث سنوات يتم فيها التركيز على التخصص المختار' ,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.kufam(
                                    color: Colors.black ,
                                    fontSize: MediaQuery.sizeOf(context).height/62 ,
                                    fontWeight: FontWeight.w500)
                                  ),
                                ),      
                          
                        ],
                      )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal:  MediaQuery.sizeOf(context).width/20,vertical:MediaQuery.sizeOf(context).height/40 ) ,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                              Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                  'هيكلة النظام:' ,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.kufam(
                                    color: Colors.black ,
                                    fontSize: MediaQuery.sizeOf(context).height/62 ,
                                    fontWeight: FontWeight.w500)
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height/80,
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                  'الليسانس مدته ثلاث سنوات' ,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.kufam(
                                    color: Colors.black ,
                                    fontSize: MediaQuery.sizeOf(context).height/62 ,
                                    fontWeight: FontWeight.w500)
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height/80,
                                ), 
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                  'الماستر مدته عامين (ماستر 1 و ماستر 2)' ,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.kufam(
                                    color: Colors.black ,
                                    fontSize: MediaQuery.sizeOf(context).height/62 ,
                                    fontWeight: FontWeight.w500)
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.sizeOf(context).height/80,
                                ), 
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                  'الدكتوراه تتراوح مدتها مابين ثلاث إلى خمس سنوات' ,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.kufam(
                                    color: Colors.black ,
                                    fontSize: MediaQuery.sizeOf(context).height/62 ,
                                    fontWeight: FontWeight.w500)
                                  ),
                                ),
                        ],
                      )
                    ),
                  )
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
);

            },
             icon: const FaIcon(FontAwesomeIcons.circleQuestion)
          ),
        backgroundColor: const Color.fromARGB(255, 8, 141, 218) ,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'تخصصات علمية' ,
          style: GoogleFonts.kufam(
            color: Colors.white ,
            fontSize: MediaQuery.sizeOf(context).height/45 ,
            fontWeight: FontWeight.w500
            )
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed:() {
              _currentPage1 = 0 ;
              _currentPage2 = 0 ;
              _currentPage3 = 0 ;
              Navigator.pop(context);
            },
             icon: const FaIcon(FontAwesomeIcons.arrowRight)
          )
        ],
      ),
      body:Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
                _currentPage1 = 0 ;
                _currentPage2 = 0 ;
                _currentPage3 = 0 ;
              });
            },
            children: _buildPages(),
          ),
        ],
      ),
    );
  }
}