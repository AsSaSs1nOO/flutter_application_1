class Etudiant{
  late String prenom;
  late String nom;
  late int age;
  late List<String> modules;

  Etudiant(this.prenom,this.nom,this.age,this.modules);
  @override
  String toString() {
    // TODO: implement toString
    return "$prenom - $nom - $age - $modules";
  }
}

void main() {
  List etudiant = [
    Etudiant("Abir", "Nabli", 20, ["Math","Flutter"]),
    Etudiant("Salah", "tozri", 22, ["Java","Angular"]),
    Etudiant("amar", "tounsi", 20, ["Html5","css"]),
    // {
    //   "prenom": "Salah",
    //   "nom": "tozri",
    //   "age": 22,
    //   "modules": ["Angular", " Html5"]
    // },
    // {
    //   "prenom": "amar",
    //   "nom": "tounsi",
    //   "age": 22,
    //   "modules": ["Flutter ", "Java"]
    // },
    // {
    //   "prenom": "Fatma",
    //   "nom": "Karoui",
    //   "age": 22,
    //   "modules": ["css ", "Java"]
    // }
  ];
  print(etudiant[1]["modules"]
      [1]); // afficher le deuxiem modules de deuxiem etudiant
  etudiant.add({
    "prenom": "Ali",
    "nom": "Soussi",
    "age": 25,
    "modules": ["dart", "reactjs"] //ajouter un nouvel elemenent a la list
  });

  print("--------------------------------------------------------------");
  for (var e in etudiant) {
    // print(e); //affiche tous la liste
    print(e["prenom"] +
        "| age =" +
        e["age"].toString() +
        "| Modules etudiant" +
        e["modules"][0].toString());
  }
  print("--------------------------------------------------------------");
  // Afficher la liste des modules de chaque etudiant (prenom)

  for (var e in etudiant) {
    String ch = "";
    // print(e["prenom"]+ "| Modules etudiant"+e["modules"].toString());
    for (var m in e["modules"]) {
      if (ch == "") {
        ch = "$m";
      } else
        ch = "$ch - $m";
    }
    print(e["prenom"] + " : " + ch);
  }
}
