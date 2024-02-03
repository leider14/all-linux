import 'package:bloglinux/data/data_models.dart';
import 'package:bloglinux/widgets/my_chips_desktop.dart';

List<MyDataModelDistro> dataListDistros = [
    MyDataModelDistro(
      name: "Ubuntu",
      version: "20.04",
      desktop: [MyChipsDesktop.gnome],
      packageManager: "apt",
      architecture: "x86_64",
      urlWeb: "https://ubuntu.com/",
      urlIcon: "https://cdn2.iconfinder.com/data/icons/metro-ui-dock/512/OS_Ubuntu_alt.png",
      releaseDate: DateTime(2020, 4, 23),
      base: "Debian",
      description: "loremp "
    ),
    MyDataModelDistro(
      name: "Fedora",
      version: "34",
      desktop: [MyChipsDesktop.gnome, MyChipsDesktop.kde],
      packageManager: "dnf",
      architecture: "x86_64",
      urlWeb: "https://getfedora.org/",
      urlIcon: "https://cdn2.iconfinder.com/data/icons/system-flat-buttons/512/fedora-256.png",
      releaseDate: DateTime(2021, 4, 27),
      base: "Red Hat",
      description: "Manjaro es una distribución Linux basada en Arch que destaca por su enfoque en la facilidad de uso, ofreciendo estabilidad y acceso rápido a las últimas actualizaciones."
    ),
    MyDataModelDistro(
      name: "Debian",
      version: "11",
      desktop: [MyChipsDesktop.xfce4, MyChipsDesktop.kde],
      packageManager: "apt",
      architecture: "amd64",
      urlWeb: "https://www.debian.org/",
      urlIcon: "https://icon.png",
      releaseDate: DateTime(2021, 8, 14),
      base: "Debian",
      description: "loremp "
    ),
    MyDataModelDistro(
      name: "Arch Linux",
      version: "rolling",
      desktop: [MyChipsDesktop.kde, MyChipsDesktop.xfce4],
      packageManager: "pacman",
      architecture: "x86_64",
      urlWeb: "https://www.archlinux.org/",
      urlIcon: "https://icon.png",
      releaseDate: DateTime(2002, 3, 11),
      base: "Debian",
      description: "loremp "
    ),
    MyDataModelDistro(
      name: "openSUSE",
      version: "15.3",
      desktop: [MyChipsDesktop.kde, MyChipsDesktop.gnome],
      packageManager: "zypper",
      architecture: "x86_64",
      urlWeb: "https://www.opensuse.org/",
      urlIcon: "https://icon.png",
      releaseDate: DateTime(2021, 6, 2),
      base: "Debian",
      description: "loremp "
    ),
    // Agrega aquí las otras distribuciones según tu preferencia
    // ...
  ];