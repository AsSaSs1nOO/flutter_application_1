# flutter_application_1

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



-Creation du projet Flutter 
-Supprition du contenu de main.dart
-Creation de la methode main contenant le runApp
-Creation du widget Mytest de type statelesswidget 
-Surcharge du la methode build
-Ajout d'un widget scaffold ( template flutter)
-Ajout d'un titre de l'application flutter avec l'attribut title de widget materielApp
-Ajout d'un widget appBar dans le scaffold
-Ajout un titre pour le appBar avec l'attribut title
-Ajout du l'attribut action a l'appBar
        appBar: AppBar(title: Text("NavBar"), actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.cloud),
          ),
        ]), 
-Supprimer la baniere rouge dans materielApp: 
        debugShowCheckedModeBanner: false, 

-Activer les deux bouttons ajoutés dans l'actionBar
-Ajouter un drawer avec l'attribut drawer du widget scaffold
-Ajouter un floatting actionButton  
-Dans le body du scaffold  ajouter widget text et trois elevatedButton
-Ameliore le layot le widget countainer(margin) et sizeBox(height)
- Extraire la partie question dans un widget externe
