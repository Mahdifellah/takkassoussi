
// ignore_for_file: file_names, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LMD1 extends StatelessWidget {
  int Npage;
  List<Map<String, String>> TECH = [
    {
      "name": "العلوم والتكنولوجيا",
      "image": "ST.png"
    },
    {
      "name": "هندسة مدنية",
      "image": "geneie_civil.png"
    },
    {
      "name": "هندسة العمليات",
      "image": "GENIE_DES_PROCEDES.png"
    },
    {
      "name": "الكهروتقنية",
      "image": "ELECTROTECHNIQUE.png"
    },
    {
      "name": "هندسة ميكانيكية",
      "image": "GENIE_MECANIQUE.png"
    },
    {
      "name": "علوم المادة",
      "image": "SCIENCES_DE_LA_MATIERE.png"
    },
    {
      "name": "علوم الكمبيوتر",
      "image": "informatique.png"
    },
    {
      "name": "الرياضيات",
      "image": "MAth.png"
    },
    {
      "name": "جيولوجيا",
      "image": "GEOLOGIE.png"
    },
    {
      "name": "هندسة حضرية",
      "image": "génie_urbain.png"
    },
    {
      "name": "هندسة معمارية",
      "image": "architecture.png"
    },
    {
      "name": "أشغال عمومية",
      "image": "travaux_public.png"
    },
    {
      "name": "مهن المدينة",
      "image": "métiers_delaville.png"
    },
    {
      "name": "مهن المدينة(مساح طوبوغرافي)",
      "image": "METIERS_DE_LA_VILLE_GEOMETRE_TOPOGRAPHE.png"
    },
    {
      "name": "إتصالات",
      "image": "TELECOMMUNICATIONS.png"
    },
    {
      "name": "فيزياء",
      "image": "physics.png"
    },
    {
      "name": "إدارة مشاريع البناء",
      "image": "management_construction.png"
    },
    {
      "name": "الصحة والسلامة الصناعية",
      "image": "hygiène.png"
    },
    {
      "name": "هيدروليك",
      "image": "hydrolique.png"
    },
    {
      "name": "التخطيط العمراني",
      "image": "URBANISME.png"
    },
    {
      "name": "طيران",
      "image": "AERONAUTIQUE.png"
    },
    {
      "name": "الطاقة المتجددة",
      "image": "ENERGIES_RENOUVELABLES.png"
    },
    {
      "name": "هندسة التعدين",
      "image": "GENIE_MINIER.png"
    },
    {
      "name": "هندسة صناعية",
      "image": "GENIE_INDUSTRIEL.png"
    },
    {
      "name": "الرياضيات التطبيقية",
      "image": "MATHEMATIQUES_APPLIQUEES.png"
    },
    {
      "name": "البصريات والميكانيكا الدقيقة",
      "image": "OPTIQUE_ET_MECANIQUE_DE_PRECISION.png"
    },
    {
      "name": "الصناعات البتروكيماوية",
      "image": "INDUSTRIES_PETROCHIMIQUES.png"
    },
    {
      "name": "الآلية",
      "image": "AUTOMATIQUE.png"
    },
    {
      "name": "إلكترونيات",
      "image": "ELECTRONIQUE.png"
    },
    {
      "name": "هندسة النقل",
      "image": "INGENIERIE_DES_TRANSPORTS.png"
    },
    {
      "name": "محروقات",
      "image": "HYDROCARBURES.png"
    },
    {
      "name": "الجيوفيزياء",
      "image": "GEOPHYSIQUE.png"
    },
    {
      "name": "الكهروميكانيك",
      "image": "ELECTROMECANIQUE.png"
    },
    {
      "name": "الحدادة",
      "image": "METALLURGIE.png"
    },
    {
      "name": "الجغرافيا والتخطيط الإقليمي",
      "image": "GÉOGRAPHIE_ET_AMÉNAGEMENT_DU_TERRITOIRE.png"
    },
  
  ];
  List<Map<String, String>> SNV = [
    {
      "name": "العلوم الطبيعية والحياة",
      "image": "SCIENCES_DE_LA_NATURE_ET_DE_LA_VIE.png"
    },
    {
      "name": "علم الزراعة",
      "image": "SCIENCES_AGRONOMIQUES.png"
    },
     {
      "name": "علم التغذية",
      "image": "SCIENCES_ALIMENTAIRES.png"
     },
    {
      "name": "هندسة التقنيات الطبية",
      "image": "GENIEBIOMEDICAL.png"
    },
    {
      "name": "علم البيئة والمحيط",
      "image": "ECOLOGIE_ET_ENVIRONNEMENT.png"
    },
  ];
  List<Map<String, String>> SE = [
    {
      "name": "علوم إقتصادية",
      "image": "SCIENCES_ECONOMIQUES.png"
    },
    {
      "name": "علوم إقتصادية ،التسيير و علوم تجارية",
      "image": "SCIENCES_ECONOMIQUES_DE_GESTION_ET_COMMERCIALES.png"
    },
    {
      "name": "علوم إدارية وعلوم مالية ومحاسبة",
      "image": "SCIENCES_DE_GESTION_SCIENCES_FINANCIERES_ET_COMPTABILITE.png"
    },
    {
      "name": "علوم المالية والمحاسبة",
      "image": "SCIENCES_FINANCIERES_ET_COMPTABILITE.png"
    },
    {
      "name": "علوم تجارية",
      "image": "SCIENCES_COMMERCIALES.png"
    },
    {
      "name": "علوم التسيير",
      "image": "SCIENCES_DE_GESTION.png"
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
        selectedList = TECH;
        break;
      case 2:
        selectedList = SNV;
        break;
      case 3:
        selectedList = SE;
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
