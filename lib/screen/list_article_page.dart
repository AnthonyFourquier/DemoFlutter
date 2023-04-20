import 'package:demoflutter/bo/accessoire.dart';
import 'package:flutter/material.dart';

class ListArticlePage extends StatelessWidget {
  ListArticlePage({Key? key}) : super(key: key);
  final List<Accessoire> listAcessoire = [
    Accessoire(1,
        "Moustache de Christophe",
        "Les supers moustaches permettant de gagner au moins 130db",
        1500,
        "https://www.comptoirdutuning.fr/upload/ext_RCW148.jpg"
    ),
    Accessoire(2,
        "Jante Alu Argent Wheels Eurosport",
        "Ajouter du style à votre 206 grâce à ces nouvelles jantes alu argent du turfu",
        200,
        "https://www.comptoirdutuning.fr/upload/wolfrace_eurosport_aero_super_t_matt_black-975x1024.png"
    ),
    Accessoire(3,
        "Inox TOCO.01.102 Silencieux arriere 1X102",
        "Silencieux arriere 1X102 ",
        400,
        "https://www.comptoirdutuning.fr/upload/TOCO.01.102.jpg"
    ),
    Accessoire(4,
        "PHARES MAZDA MX 3 91-98 ANGEL EYES CHROME",
        "PHARES MAZDA MX 3 91-98 ANGEL EYES CHROME (la paire) [eclcdt_tec_LPMA01]",
        297.79,
        "https://www.comptoirdutuning.fr/upload/thumbs/TT_LPMA01-be42.jpg"
    ),
    Accessoire(5,
        "Filtre à air PIPERCROSS PX1403 ",
        "Modèle de véhicule compatible : Alfa Romeo 166 2.4 JTD (all) année 10/98 ",
        56.50,
        "https://www.comptoirdutuning.fr/upload/thumbs/PipercrossRond-4639.jpg"
    ),
    Accessoire(6,
        "Demon Wheels 71 Forged Edition Munich",
        "Ah ça claque bien",
        1850.63,
        "https://www.comptoirdutuning.fr/upload/thumbs/fmunich-c38c.jpg"
    ),
    Accessoire(7,
        "ANTENNE GPS DUMMY CHROMEE",
        "Devenez le requin de votre cité!",
        11.61,
        "https://www.comptoirdutuning.fr/upload/thumbs/8424332695109_1-dbc8.jpg"
    ),
    Accessoire(8,
        "KIT LAMBO DOORS POUR BMW SERIE3 COMPACT",
        "Le kit comprend 2 charnières complètes pré-assemblées avec leur vérin, kit complet d´installation",
        1310.00,
        "https://www.comptoirdutuning.fr/upload/thumbs/lsd_e36compact-86fc.jpg"
    ),
    Accessoire(9,
        "POMMEAU DE VITESSE \"MALTA\" CROIX DE MALTE",
        "Rien n'est vrai tout est permis",
        40.74,
        "https://www.comptoirdutuning.fr/upload/thumbs/8424332889355_1-68e2.jpg"
    ),
    Accessoire(10,
        "TAPIS CAOUTCHOUC LOOK ALU. 4PCS ROSE ",
        "Code EAN 8/13 ou code UPC : 8424332186607",
        31.41,
        "https://www.comptoirdutuning.fr/upload/thumbs/8424332186607_1-d28c.jpg"
    ),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xF5FFFFFF),
      appBar: AppBar(title: const Text("Olivier SHop"),),
      body: ListView.separated(
        itemCount: listAcessoire.length,
        itemBuilder: (BuildContext context, int index) {
          return CardList(listAcessoire: listAcessoire, index: index,);
      },
    separatorBuilder: (BuildContext context, int index) => const Divider(),
    )
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.index,
    required this.listAcessoire,
  });

  final List<Accessoire> listAcessoire;
  final int index;

  @override
  Widget build(BuildContext context) {
    final acessoire = listAcessoire[index];
    return Card(
      elevation: 8,
      child: ListTile(
        leading: Image.network(acessoire.urlImage),
        title : Text(acessoire.title, maxLines: 2,),
        subtitle : Text('${acessoire.price} €', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w400),),
        trailing: IconButton(onPressed : () => {}, icon: Icon(Icons.add, color: Colors.blue,)),
        onTap: () {
        },
      ),
    );
  }
}
