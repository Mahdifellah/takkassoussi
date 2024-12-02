// ignore_for_file: file_names

import 'package:abwabmaftoha/screens/Speciality.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'مرحبا بك' ,
                style: GoogleFonts.kufam(
                  color: const Color.fromARGB(255, 8, 141, 218) ,
                  fontSize: MediaQuery.sizeOf(context).height/15 ,
                  fontWeight: FontWeight.w700
                )
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height/40,
              ),
              Text(
                'في تطبيق تخصصي دليلك للتخصصات الجامعية' ,
                textAlign: TextAlign.center,
                style: GoogleFonts.kufam(
                  color: const Color.fromARGB(255, 8, 141, 218) ,
                  fontSize: MediaQuery.sizeOf(context).height/30 ,
                  fontWeight: FontWeight.w600
                ),
                ),
                SizedBox(
                height: MediaQuery.sizeOf(context).height/40,
              ),
              Image(
                  height: MediaQuery.sizeOf(context).height/3,
                  image: const AssetImage('assets/logo1.png')
                  ),
                  SizedBox(
                height: MediaQuery.sizeOf(context).height/40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) => const Speciality(),
                     ));
                },
                borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height) ,
                child: Ink(
                  height: MediaQuery.sizeOf(context).height/15 ,
                  width: 2*MediaQuery.sizeOf(context).width/3,
                  decoration: BoxDecoration(
                    border:Border.all(
                      color: const Color.fromARGB(255, 8 , 141, 218) ,
                      width: 2 ,
                    ),
                    borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height)
                  ),
                  child: Center(
                    child: Text('اضغط للمتابعة معنا' ,
                    style: GoogleFonts.kufam(
                    color: const Color.fromARGB(255, 8, 141, 218) ,
                    fontSize: MediaQuery.sizeOf(context).height/40 ,
                    fontWeight: FontWeight.w600)                     
                           ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}