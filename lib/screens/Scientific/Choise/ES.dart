// ignore_for_file: file_names, non_constant_identifier_names

import 'package:abwabmaftoha/screens/Scientific/Choise/infoPages/EsInfo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ES extends StatelessWidget {
  int Npage;
  List<Map<String, dynamic>> EST = [
    {
      "name": "المدرسة الوطنية العليا للإعلام الآلي الجزائر",
      "image": "esi_alger.png" ,
      "info" : 1
    },
    {
      "name": "المدرسة العليا للإعلام الآلي سيدي بلعباس",
      "image": "esi_sba.png" ,
      "info" : 1
    },
    {
      "name": "المدرسة العليا للإعلام الآلي والرقمنة بجاية",
      "image": "estin.png" ,
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للتكنولوجيا المتقدمة",
      "image": "ensta.png" ,
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للذكاء الاصطناعي",
      "image": "ensia.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا في الرياضيات",
      "image": "nhsm.png",
      "info" : 1
    },
    {
      "name": "المدرسة المتعددة التقنيات للهندسة المعماربة والعمران",
      "image": "epau.jpg",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للطاقات المتجددة والبيئة والتنمية المستدامة",
      "image": "hns-re2sd.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للري",
      "image": "ensh.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للعلوم التطبيقية",
      "image": "essa.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية المتعددة التقنيات",
      "image": "enp.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للاشغال العمومية",
      "image": "enstp.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للتكنولوجيا و الهندسة",
      "image": "ensti.png",
      "info" : 1
    },
    {
      "name": "المدرسة العليا المتعددة التقنيات قسنطينة",
      "image": "enp_constantine.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية المتعددة التقنيات بوهران",
      "image": "enpo.png",
      "info" : 1
    },
    {
      "name": "المدرسة العليا في الهندسة الكهربائية و الطاقوية",
      "image": "esgee.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا لعلوم النانو وتكنولوجيا النانو",
      "image": "ensnn.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا لتكنولوجيا الأنظمة المستقلة",
      "image": "nsas.jfif",
      "info" : 1
    },
  ];
  List<Map<String, dynamic>> ESSNV = [
    {
      "name": "المدرسة الوطنية العليا في البيوتكنولوجيا",
      "image": "ensb.png",
      "info" : 1
    },
    {
      "name": "المدرسة الوطنية العليا للبيطرة",
      "image": "ensv.png",
      "info" : 0
    },
    {
      "name": "المدرسة الوطنية العليا للفلاحة الجزائر",
      "image": "ensa.png",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للعلوم الغذائية والصناعات الغذائية الزراعية",
      "image": "essaia.jfif",
      "info" : 0
    },
    {
      "name": "المدرسة الوطنية العليا للفلاحة مستغانم",
      "image": "hsam.png",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للعلوم البيولوجية",
      "image": "essbo.png",
      "info" : 0
    },
    {
      "name": "المدرسة الوطنية العليا للغبات",
      "image": "ensf.jfif",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للفلاحة الصحراوية أدرار",
      "image": "esasa.jfif",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للفلاحة الصحراوية بالوادي",
      "image": "esase.png",
      "info" : 0
    },
    {
      "name": "المدرسة الوطنية العليا لعلوم البحر و تهيئة الساحل",
      "image": "enssmal.png",
      "info" : 0
    },
  ];
  List<Map<String, dynamic>> ESSE = [
    {
      "name": "المدرسة العليا لعلوم التسيير",
      "image": "essg.png",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للمحاسبة والمالية",
      "image": "escf.png",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للاقتصاد",
      "image": "ese_oran.jfif",
      "info" : 0
    },
    {
      "name": "مدرسة الدراسات العليا التجارية",
      "image": "hec.png",
      "info" : 0
    },
    {
      "name": "المدرسة الوطنية العليا للإحصاء و الإقتصاد التطبيقي",
      "image": "enssea.jfif",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للتجارة",
      "image": "esc.jfif",
      "info" : 0
    },
    {
      "name": "المدرسة العليا للتسيير و الإقتصاد الرقمي",
      "image": "esgen.png",
      "info" : 0
    },
    {
      "name": "المدرسة العليا لإدارة الأعمال",
      "image": "esmt.jfif",
      "info" : 0
    },
  ];
  ES({
    Key? key,
    required this.Npage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> selectedList;

    switch (Npage) {
      case 1:
        selectedList = EST;
        break;
      case 2:
        selectedList = ESSNV;
        break;
      case 3:
        selectedList = ESSE;
        break;
      default:
        selectedList = [];
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 141, 218),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'المدارس العليا',
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
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.sizeOf(context).height / 100,
            horizontal: MediaQuery.sizeOf(context).width / 30),
        child: ListView.builder(
          itemCount: selectedList.length,
          itemBuilder: (context, index) {
            final university = selectedList[index];
            return Container(
              margin: EdgeInsets.only(bottom: MediaQuery.sizeOf(context).height / 80),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 8, 141, 218),
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height / 40),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(MediaQuery.sizeOf(context).height / 40),
                onTap: () {
                  // to the informations Page
                  print(university["info"]) ;
                  Navigator.push(
                     context,
                     MaterialPageRoute(
                     builder: (context) =>  Esinfo(
                      info : university["info"],
                      name : university["name"],
                      image : university["image"], 
                      Npage : Npage ,
                      index : index,
                     ),
                     ));
                },
                child: Ink(
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            university["name"]!,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: GoogleFonts.kufam(
                                color: Colors.black,
                                fontSize: MediaQuery.sizeOf(context).height /58,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          width:  MediaQuery.sizeOf(context).width/30
                        ),
                        Expanded(
                          child: Image(
                            height: MediaQuery.sizeOf(context).height / 17,
                            image: AssetImage('assets/images/ES/${university["image"]}'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
/*print(index) ;*/