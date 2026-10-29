# Comprendre ce premier projet

Le devoir demande un projet Flutter dont les dépendances sont installées,
puis une version enregistrée avec Git et envoyée sur GitHub.

1. **Installer Flutter** apporte les outils de création et le langage Dart.
2. **Créer le projet** avec `flutter create mon_premier_flutter` génère sa structure.
3. **Installer les dépendances** avec `flutter pub get` récupère les bibliothèques
   déclarées dans `pubspec.yaml`. Le fichier `pubspec.lock` fixe leurs versions.
4. **Vérifier le code** avec `flutter analyze` et `flutter test` recherche les erreurs.
5. **Compiler pour Android** avec `flutter build apk --debug` produit une application
   installable pour les essais, dans `build/app/outputs/flutter-apk/app-debug.apk`.
6. **Préparer les fichiers** avec `git add .` choisit ce qui entrera dans la version.
7. **Faire un commit** avec `git commit -m "Premier projet Flutter"` enregistre
   cette version sur l'ordinateur. Le message décrit son contenu.
8. **Faire un push** avec `git push` envoie les commits vers le dépôt GitHub configuré.

## Lire le code de l'écran

- `main()` est le point d'entrée du programme.
- `runApp(const MyApp())` démarre l'interface Flutter.
- Un **widget** est un élément de l'interface : texte, bouton, colonne, écran, etc.
- `MaterialApp` configure l'application et son thème.
- `Scaffold` organise l'écran, la barre de titre et le bouton.
- `_counter` mémorise le nombre de clics pendant l'exécution.
- `_incrementCounter()` augmente cette valeur.
- `setState()` demande de reconstruire l'interface avec la nouvelle valeur.

Le compteur revient à zéro lors d'un redémarrage complet : il n'est pas encore
sauvegardé dans une base de données.

## Message à envoyer au groupe une fois le push vérifié

Nom complet : Kalonji Kashalala Vainqueur

Lien du dépôt : https://github.com/vainqueur1110/mon_premier_flutter

Le lien doit être vérifié sur GitHub avant d'envoyer ce message au groupe.
