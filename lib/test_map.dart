void main() { 
  List list1 = ["salah","amar","fatma"];
  List salaire = [1000,1100,1500];
  List list3 = list1.map((e) =>  e+" - Etudiant").toList();
  print(list3); 
  List salaire2 = salaire.map((s) => s * 1.1).toList();
  print(salaire2);
  
}