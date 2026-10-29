# Mon premier projet Flutter

**Auteur : Kalonji Kashalala Vainqueur**

**Compte GitHub : vainqueur1110**

Projet d'initiation réalisé dans le cadre du cours de programmation mobile.
Il permet d'apprendre à créer une application Flutter, installer ses dépendances,
vérifier son code et conserver son travail avec Git et GitHub.

Version de création : Flutter stable 3.47.8 et Dart 3.13.7.

## Comprendre les outils

- **Flutter** fournit les outils et les éléments d'interface pour créer l'application.
- **Dart** est le langage utilisé dans les fichiers du projet. Il est fourni avec Flutter.
- **Une dépendance** est un ensemble de code réutilisable nécessaire au projet.
- **Git** enregistre les versions du projet sur l'ordinateur.
- **GitHub** héberge le dépôt en ligne pour permettre de partager le projet.

## Se repérer dans le projet

| Fichier ou dossier | À quoi il sert |
| --- | --- |
| `lib/main.dart` | Point de départ de l'application et code de son interface. |
| `test/widget_test.dart` | Test automatisé du comportement de l'interface. |
| `pubspec.yaml` | Nom du projet, versions compatibles, dépendances et ressources. |
| `pubspec.lock` | Versions exactes des dépendances retenues ; à conserver dans Git pour cette application. |
| `android/` | Configuration nécessaire pour exécuter et compiler sur Android. |
| `web/` | Configuration nécessaire pour exécuter dans un navigateur. |
| `.gitignore` | Liste des fichiers générés et locaux à exclure du dépôt. |

## Installer les dépendances et vérifier le projet

Ouvrir un terminal dans le dossier `mon_premier_flutter`, puis exécuter :

```powershell
flutter pub get
flutter analyze
flutter test
```

`pub get` télécharge les dépendances de `pubspec.yaml` et prépare leur utilisation.
`analyze` recherche des problèmes dans le code ; `test` lance les tests automatisés.
Relancer `flutter pub get` après un changement de dépendances ou après un clonage.

## Lancer l'application

Pour essayer l'application dans Google Chrome :

```powershell
flutter run -d chrome
```

Pour un téléphone Android, activer les options pour les développeurs et le débogage
USB, connecter le téléphone avec un câble adapté, puis autoriser l'ordinateur sur
le téléphone. Vérifier la configuration et les appareils reconnus :

```powershell
flutter doctor -v
flutter devices
flutter run -d IDENTIFIANT_ANDROID
```

Remplacer `IDENTIFIANT_ANDROID` par l'identifiant indiqué par `flutter devices`.
Si les licences Android sont signalées comme manquantes, lancer
`flutter doctor --android-licenses`, lire les conditions et répondre aux questions.
Dans le terminal de l'application, appuyer sur `q` pour arrêter l'exécution.

## Enregistrer et envoyer ses modifications

Après une modification, vérifier le code puis enregistrer une nouvelle version :

```powershell
flutter analyze
flutter test
git status
git add .
git commit -m "Décrire la modification réalisée"
git push
```

**Commit** : enregistre localement les fichiers préparés par `git add`.
**Push** : envoie les commits sur GitHub. Il nécessite un dépôt distant configuré,
une branche associée à ce dépôt et une connexion au compte GitHub.
`git status` permet de vérifier les fichiers concernés avant de les enregistrer.

## Récupérer le projet depuis GitHub

Dépôt GitHub : <https://github.com/vainqueur1110/mon_premier_flutter>.
Pour récupérer le projet sur un autre ordinateur :

```powershell
git clone https://github.com/vainqueur1110/mon_premier_flutter.git
cd mon_premier_flutter
flutter pub get
flutter run -d chrome
```

## Configuration locale de préparation

Flutter est installé dans `C:\Users\PC\develop\flutter` et le SDK Android dans
`C:\Users\PC\develop\android-sdk`. Ajouter le dossier `bin` de Flutter au `PATH`
permet d'utiliser la commande `flutter` dans un nouveau terminal.
Ces chemins sont propres à l'ordinateur de préparation et peuvent différer ailleurs.

## Documentation officielle

- [Découvrir Flutter](https://docs.flutter.dev/)
- [Comprendre les dépendances](https://docs.flutter.dev/packages-and-plugins/using-packages)
- [Configurer Android](https://docs.flutter.dev/platform-integration/android/setup)
- [Comprendre Git et GitHub](https://docs.github.com/en/get-started/using-git/about-git)
