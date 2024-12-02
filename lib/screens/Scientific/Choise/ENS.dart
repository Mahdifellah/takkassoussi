// ignore_for_file: file_names, non_constant_identifier_names, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ENS extends StatelessWidget {

  List<Map<String, String>> MED = [
    {
      "name": "المدرسة العليا للاساتذة بالاغواط",
      "image": "ens_laghouat.png"
    },
    {
      "name": "المدرسة العليا للأساتذة ببشار",
      "image": "ens_bechar.jfif"
    },
    {
      "name": "المدرسة العليا للأساتذة القبة",
      "image": "ens_kouba.jfif"
    },
    {
      "name": "المدرسة العليا للأساتذة سطيف",
      "image": "ens_setif.jfif"
    },
    {
      "name": "المدرسة العليا للاساتذة بسعيدة",
      "image": "ens_saida.png"
    },
    {
      "name": "المدرسة العليا لأساتذة التعليم التكنولوجي بسكيكدة",
      "image": "ens_skikda.jfif"
    },
    {
      "name": "المدرسة العليا للأساتذة قسنطينة",
      "image": "ens_constantine.png"
    },
    {
      "name": "المدرسة العليا للأساتذة مستغانم",
      "image": "ens_mostaganem.jpg"
    },
    {
      "name": "المدرسة العليا للاساتذة بوسعادة",
      "image": "ens_bousaada.png"
    },
    {
      "name": "المدرسة العليا للأساتذة بورقلة",
      "image": "ens_ouargla.jfif"
    },
    {
      "name": "المدرسة العليا للأساتذة وهران",
      "image": "ens_oran.jfif"
    },
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 8, 141, 218),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'مدارس عليا للأساتذة',
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
          itemCount: MED.length,
          itemBuilder: (context, index) {
            final university = MED[index];
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
                            image: AssetImage('assets/images/ENS/${university["image"]}'),
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
