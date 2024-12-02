import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Esinfo extends StatelessWidget {
  int info ;
  String name ;
  String image ;
  int Npage;
  int index ;
  Esinfo({
    Key? key,
    required this.info,
    required  this.name,
    required this.image,
    required this.Npage,
    required this.index,
  }) : super(key: key);
List<Map<String, dynamic>> information1 = [
 {
  "desc" : "تلتثصاتلبثتصلتصثالتالعصتلرقخنالخهبختنلابنخلاتقنمتاقنخلانثقت",
  "spec" : "بلاثتصلابتلاثصتبلاتصابتصتثابتصثابتلاصتباصتنبىتصبلاتصبتصلاىتنبلاصتبلاتصبلاتبلاثتص",
  "moyen" : "ىنبصنابهصثاهخاصثهخبصتلابتصانبصانهخابصابخصابنخلاتصلابت",
  "res" : "بتاصتلانصتبلاتنثصانبتنمصلابصتاالبهختصمكةبنمصلاتنلابللصتخباصنمىبةصىنبلاتن"
 }
];
List<Map<String, dynamic>> information2 = [
 {
  "desc" : "تلتثصاتلبثتصلتصثالتالعصتلرقخنالخهبختنلابنخلاتقنمتاقنخلانثقت1",
  "spec" : "بلاثتصلابتلاثصتبلاتصابتصتثابتصثابتلاصتباصتنبىتصبلاتصبتصلاىتنبلاصتبلاتصبلاتبلاثتص",
  "moyen" : "ىنبصنابهصثاهخاصثهخبصتلابتصانبصانهخابصابخصابنخلاتصلابت",
  "res" : "بتاصتلانصتبلاتنثصانبتنمصلابصتاالبهختصمكةبنمصلاتنلابللصتخباصنمىبةصىنبلاتن"
 }
];
List<Map<String, dynamic>> information3 = [
 {
  "desc" : "2تلتثصاتلبثتصلتصثالتالعصتلرقخنالخهبختنلابنخلاتقنمتاقنخلانثقت",
  "spec" : "بلاثتصلابتلاثصتبلاتصابتصتثابتصثابتلاصتباصتنبىتصبلاتصبتصلاىتنبلاصتبلاتصبلاتبلاثتص",
  "moyen" : "ىنبصنابهصثاهخاصثهخبصتلابتصانبصانهخابصابخصابنخلاتصلابت",
  "res" : "بتاصتلانصتبلاتنثصانبتنمصلابصتاالبهختصمكةبنمصلاتنلابللصتخباصنمىبةصىنبلاتن"
 }
];



  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> selectedList;
    switch (Npage) {
      case 1:
        selectedList = information1;
        break;
      case 2:
        selectedList = information2;
        break;
      case 3:
        selectedList = information3;
        break;
      default:
        selectedList = [];
    }
    final FinalInfo = selectedList[index];
     Widget _isThereInfo (int info){
   switch(info){
    case 1 : return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Expanded(
          flex: 3,
          child: Text(
            name,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: GoogleFonts.kufam(
              color: Colors.black,
              fontSize: MediaQuery.sizeOf(context).height /50,
              fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width/15,
        ),
        Expanded(
          flex: 1,
          child: Image(
            image:AssetImage('assets/images/ES/$image'), ),
        )
          ],
        ),
        Text(FinalInfo["desc"]) ,
        Text(FinalInfo["spec"]) ,
        Text(FinalInfo["moyen"]) ,
        Text(FinalInfo["res"]) ,
        Container(    
          width: 2*MediaQuery.sizeOf(context).width/3,  
          height: MediaQuery.sizeOf(context).height/3,               
          decoration: BoxDecoration(
          border:Border.all(
          color: const Color.fromARGB(255, 8 , 141, 218) ,
          width: 4 ,
          ),
          borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height /25)
          ),
          ),
      ],
    );
    default:
        return Center(
          child: Text(
            'ليست هناك معلومات حاليا',
            ),
        );
   }
 }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 141, 218),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'معلومات المدرسة',
          style: GoogleFonts.kufam(
              color: Colors.white,
              fontSize: MediaQuery.sizeOf(context).height / 45,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const FaIcon(FontAwesomeIcons.arrowRight),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height/60,horizontal: MediaQuery.sizeOf(context).width/20),
        child: _isThereInfo(info),
      ),
    );
  }
}