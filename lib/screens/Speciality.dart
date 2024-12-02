// ignore_for_file: file_names

import 'package:abwabmaftoha/screens/Literary/LiteraryPage.dart';
import 'package:abwabmaftoha/screens/Scientific/ScientificPage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Speciality extends StatelessWidget {
  const Speciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 141, 218) ,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image:  const AssetImage('assets/logo3.png'),
              height: MediaQuery.sizeOf(context).height/20,
              ),
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'تخصصي' ,
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
              Navigator.pop(context);
            },
             icon: const FaIcon(FontAwesomeIcons.arrowRight)
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height /10,
          ),
          Text(
            'مبارك عليك النجاح' ,
            style: GoogleFonts.kufam(
                  color: const Color.fromARGB(255, 8, 141, 218) ,
                  fontSize: MediaQuery.sizeOf(context).height/35 ,
                  fontWeight: FontWeight.w700)
            ) ,
           SizedBox(
            height: MediaQuery.sizeOf(context).height /80,
          ), 
          Text(
            'في شهادة البكالوريا' ,
            style: GoogleFonts.kufam(
                  color: const Color.fromARGB(255, 8, 141, 218) ,
                  fontSize: MediaQuery.sizeOf(context).height/35 ,
                  fontWeight: FontWeight.w700)
            ) ,
            SizedBox(
            height: MediaQuery.sizeOf(context).height /40,
          ),
          Text(
            'والآن عليك اختيار المجال الذي تريد إكمال دراستك فيه' ,
            textAlign: TextAlign.center,
            style: GoogleFonts.kufam(
                  color: Colors.black ,
                  fontSize: MediaQuery.sizeOf(context).height/45 ,
                  )
            ) ,
            SizedBox(
            height: MediaQuery.sizeOf(context).height /40,
          ),
           Expanded(
             child: Padding(
               padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height/40  ,bottom: MediaQuery.sizeOf(context).height/40  ),
               child: Column(
               children: [
                 Expanded(
                  flex: 1,
                   child: InkWell(
                    onTap: () {
                      // to the next page
                      Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) => const Scientificpage(),
                     ));
                    },
                    borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25) ,
                     child: Ink(    
                      width: 2*MediaQuery.sizeOf(context).width/3,                 
                      decoration: BoxDecoration(
                        border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 4 ,
                      ),
                      borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25)
                      ),
                      child: Column( 
                        mainAxisAlignment: MainAxisAlignment.center,                 
                        children: [
                          Text(
                            'تخصصات علمية' ,
                            style: GoogleFonts.kufam(
                            color: Colors.black ,
                            fontSize: MediaQuery.sizeOf(context).height/45 ,
                            fontWeight: FontWeight.w500
                           )
                          ) ,
                          SizedBox(
                            height: MediaQuery.sizeOf(context).height/100,
                          ),
                          Image(
                             height: MediaQuery.sizeOf(context).height/7,
                             image: const AssetImage('assets/image1.png')
                           ),
                        ],
                      ),                  
                     ),
                   ),
                 ) ,
                 SizedBox(
                  height: MediaQuery.sizeOf(context).height/60 ,
                 ),
                 Expanded(
                  flex: 1,
                   child: InkWell(
                    onTap: () {
                      // to the next page
                      Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) => const LiteraryPage(),
                     ));
                    },
                    borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25),
                     child: Ink(
                      width: 2*MediaQuery.sizeOf(context).width/3,  
                      decoration: BoxDecoration(
                        border:Border.all(
                        color: const Color.fromARGB(255, 8 , 141, 218) ,
                        width: 4 ,
                      ),
                      borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,  
                        children: [
                          Text(
                            'تخصصات أدبية' ,
                            style: GoogleFonts.kufam(
                            color: Colors.black ,
                            fontSize: MediaQuery.sizeOf(context).height/45 ,
                            fontWeight: FontWeight.w500
                           )
                           ) ,
                           SizedBox(
                            height: MediaQuery.sizeOf(context).height/100,
                          ),
                           Image(
                             height: MediaQuery.sizeOf(context).height/7,
                             image: const AssetImage('assets/image2.png')
                           ),
                        ],
                      ),
                     ),
                   ),
                 ) ,
               ],
              ),
             ),
           )    
        ],
      ),
    );
  }
}