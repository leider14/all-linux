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
      description: "Ubuntu es una distribución Linux popular y amigable, reconocida por su enfoque en la accesibilidad y facilidad de uso. Desarrollada por Canonical, Ubuntu ofrece una experiencia de usuario intuitiva y estable. Con entornos de escritorio como GNOME y la variante oficial, Ubuntu ofrece opciones visuales atractivas y funcionales. Utilizando el sistema de gestión de paquetes APT, la instalación y actualización de software son eficientes. Ubuntu es conocida por sus versiones de soporte a largo plazo (LTS) que brindan estabilidad a largo plazo para empresas y usuarios. Únete a la comunidad Ubuntu y disfruta de un sistema operativo confiable y versátil para tus necesidades informáticas diarias."
    ),
    MyDataModelDistro(
      name: "Manjaro",
      version: "21.2.3", // Reemplaza con la versión actual de Manjaro
      desktop: [MyChipsDesktop.gnome, MyChipsDesktop.kde], // Puedes ajustar los entornos de escritorio según la preferencia
      packageManager: "pacman", // Manjaro utiliza pacman como gestor de paquetes
      architecture: "x86_64",
      urlWeb: "https://manjaro.org/", // Cambia la URL a la página oficial de Manjaro
      urlIcon: "https://upload.wikimedia.org/wikipedia/commons/0/07/Manjaro-logo.png", // Cambia la URL al ícono de Manjaro
      releaseDate: DateTime(2021, 4, 27), // Cambia la fecha de lanzamiento según la versión actual de Manjaro
      base: "Arch", // Manjaro se basa en Arch Linux
      description: "Manjaro es una distribución Linux basada en Arch que destaca por su enfoque en la facilidad de uso, ofreciendo estabilidad y acceso rápido a las últimas actualizaciones."
    ),

    MyDataModelDistro(
      name: "Fedora",
      version: "34",
      desktop: [MyChipsDesktop.gnome, MyChipsDesktop.kde],
      packageManager: "dnf",
      architecture: "x86_64",
      urlWeb: "https://fedoraproject.org/",
      urlIcon: "https://cdn2.iconfinder.com/data/icons/system-flat-buttons/512/fedora-512.png",
      releaseDate: DateTime(2021, 4, 27),
      base: "Red Hat",
      description: "Fedora es una distribución Linux impulsada por la comunidad y respaldada por Red Hat. Con un enfoque en la innovación, Fedora ofrece un sistema operativo sólido y actualizado con regularidad. La versión 34 presenta entornos de escritorio como GNOME y KDE, brindando a los usuarios opciones intuitivas y atractivas. Utilizando el gestor de paquetes DNF, la instalación y gestión de software son simples y eficientes. Fedora, con su base en Red Hat, es conocida por su compromiso con la seguridad, la estabilidad y la adopción de las últimas tecnologías. Experimenta la potencia de Fedora y únete a una comunidad dedicada al impulso de la excelencia en el mundo de Linux."
    ),
    MyDataModelDistro(
      name: "Debian",
      version: "11",
      desktop: [MyChipsDesktop.xfce4, MyChipsDesktop.kde],
      packageManager: "apt",
      architecture: "amd64",
      urlWeb: "https://www.debian.org/",
      urlIcon: "https://cdn2.iconfinder.com/data/icons/system-flat-buttons/512/debian-512.png",
      releaseDate: DateTime(2021, 8, 14),
      base: "Debian",
      description: "Debian es una distribución Linux robusta y de propósito general, conocida por su compromiso con los principios del software libre y su estabilidad. Desarrollada por una comunidad global de voluntarios, Debian proporciona un sistema operativo sólido y confiable. Con opciones de entornos de escritorio como GNOME y Xfce, Debian ofrece flexibilidad para adaptarse a diferentes necesidades y preferencias. Utilizando el sistema de gestión de paquetes APT, la instalación y actualización de software son eficientes y seguras. Debian es la base de muchas otras distribuciones populares y es apreciada por su enfoque conservador y su compromiso con la libertad del software. Únete a la comunidad Debian y experimenta la estabilidad y versatilidad de esta venerable distribución Linux."
    ),
    MyDataModelDistro(
      name: "Arch Linux",
      version: "rolling",
      desktop: [MyChipsDesktop.kde, MyChipsDesktop.xfce4],
      packageManager: "pacman",
      architecture: "x86_64",
      urlWeb: "https://www.archlinux.org/",
      urlIcon: "https://cdn2.iconfinder.com/data/icons/system-flat-buttons/512/archlinux-512.png",
      releaseDate: DateTime(2002, 3, 11),
      base: "Debian",
      description: "Arch Linux es una distribución Linux minimalista y orientada a usuarios avanzados, conocida por su enfoque en la simplicidad y la personalización. Diseñada para usuarios que prefieren construir su sistema desde cero, Arch proporciona una base sólida y simple con el gestor de paquetes Pacman. Con una filosofía de 'hazlo tú mismo', Arch permite a los usuarios seleccionar y configurar cada componente de su sistema, desde el entorno de escritorio hasta las aplicaciones. Su enfoque rolling release garantiza acceso rápido a las últimas actualizaciones y software. Arch Linux es apreciada por su flexibilidad y la comunidad activa que la respalda. Si buscas un control total sobre tu sistema y disfrutas de la personalización, Arch Linux puede ser la elección perfecta para ti."
    ),
    MyDataModelDistro(
      name: "openSUSE",
      version: "15.3",
      desktop: [MyChipsDesktop.kde, MyChipsDesktop.gnome],
      packageManager: "zypper",
      architecture: "x86_64",
      urlWeb: "https://www.opensuse.org/",
      urlIcon: "https://cdn2.iconfinder.com/data/icons/system-flat-buttons/512/opensuse-512.png",
      releaseDate: DateTime(2021, 6, 2),
      base: "Debian",
      description: "openSUSE es una distribución Linux versátil y robusta que ofrece un equilibrio único entre estabilidad y últimas tecnologías. Desarrollada por la comunidad y respaldada por SUSE, openSUSE es conocida por su flexibilidad y elección de entornos de escritorio, como KDE y GNOME. Utilizando el gestor de paquetes Zypper, la instalación y actualización de software son eficientes y seguras. openSUSE ofrece tanto versiones de lanzamiento regular como la edición Tumbleweed, una rolling release que proporciona acceso continuo a las últimas actualizaciones. Con herramientas como YaST para la configuración del sistema, openSUSE se destaca por su enfoque en la usabilidad y la administración del sistema. Únete a la comunidad openSUSE y experimenta la potencia de una distribución Linux flexible y de vanguardia."
    ),
  ];