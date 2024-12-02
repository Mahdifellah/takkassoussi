// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LMD1 extends StatelessWidget {
  int Npage;
  List<Map<String, String>> LIT = [
    {
      "name": "علوم سياسية",
      "image": "SCIENCES_POLITIQUES.png"
    },
    {
      "name": "الحقوق",
      "image": "Droit.png"
    },
    {
      "name": "علوم إنسانية",
      "image": "SCIENCES_HUMAINES.png"
    },
    {
      "name": "علوم اجتماعية",
      "image": "SCIENCES_SOCIALES.png"
    },
    {
      "name": "دراسات إسلامية",
      "image": "SCIENCES_ISLAMIQUES.png"
    },
    {
      "name": "رياضة",
      "image": "sport.png"
    },
    {
      "name": "فنون",
      "image": "Arts.png"
    },
    {
      "name": "علم الآثار",
      "image": "SCIENCES_HUMAINES_ARCHEOLOGIE.png"
    },
    {
      "name": "علم المكتبات",
      "image": "SCIENCES_HUMAINES_BIBLIOTHECONOMIE.png"
    },
    {
      "name": "علوم المعلومات والاتصال",
      "image": "SCIENCES_DE_L'INFORMATION_ET_DE_LA_COMMUNICATION.png"
    },
  ];
  List<Map<String, String>> LANG = [
    {
      "name": "اللغة والأدب عربي",
      "image": "LANGUE_ET_LITTERATURE_ARABES.png"
    },
    {
      "name": "اللغة الفرنسية",
      "image": "LANGUE_FRANCAISE.png"
    },
    {
      "name": "اللغة الإنجليزية",
      "image": "LANGUE_ANGLAISE.png"
    },
    {
      "name": "اللغة والثقافة الأمازيغية",
      "image": "LANGUE_ET_CULTURE_AMAZIGHES.png"
    },
    {
      "name": "اللغة الإسبانية",
      "image": "LANGUE_ESPAGNOLE.png"
    },
    {
      "name": "اللغة الايطالية",
      "image": "LANGUE_ITALIENNE.png"
    },
    {
      "name": "لغة المانية",
      "image": "LANGUE_ALLEMANDE.png"
    },
    {
      "name": "اللغة الروسية",
      "image": "LANGUE_RUSSE.png"
    },
    {
      "name": "اللغة التركية",
      "image": "LANGUE_TURQUE.png"
    },
    {
      "name": "الترجمة الفورية (العربية، الفرنسية، الإنجليزية)",
      "image": "ARABE_FRANCAIS_ANGLAIS.png"
    },
    {
      "name": "الترجمة الفورية (العربية، الفرنسية، الأمازيغية)",
      "image": "ARABE_FRANCAIS_AMAZIGH.png"
    },
    {
      "name": "الترجمة الفورية (العربية، الفرنسية، الإسبانية)",
      "image": "ARABE_FRANCAIS_ESPAGNOLE.png"
    },
  ];
  LMD1({
    Key? key,
    required this.Npage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> selectedList;

    switch (Npage) {
      case 1:
        selectedList = LIT;
        break;
      case 2:
        selectedList = LANG;
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
          'ليسانس-ماستر-دكتوراه',
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
                  print(index) ;
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
                            image: AssetImage('assets/images/LMD/${university["image"]}'),
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
