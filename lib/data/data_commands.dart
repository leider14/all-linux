import 'package:bloglinux/data/data_models.dart';

//Lista de comandos 
List<MyDataModelCommand> dataListCommands = [
  // Navegación (Type: 1)
MyDataModelCommand(
    type: 1,
    title: "Navegar en carpetas",
    description: "Cambiar el directorio actual en la línea de comandos.",
    commands: [
      "cd nombre_del_directorio",
      "cd /opt/android_studio",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Ir al directorio de inicio",
    description: "Volver al directorio de inicio del usuario.",
    commands: [
      "cd ~",
      "cd",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Ir al directorio padre",
    description: "Utiliza \"cd ..\" para cambiar al directorio padre del directorio actual.",
    commands: [
      "cd ..",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Ir a un directorio absoluto",
    description: "Puedes cambiar directamente a un directorio absoluto utilizando el comando \"cd\" seguido de la ruta completa.",
    commands: [
      "cd /ruta/completa/del_directorio",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Ir al último directorio visitado",
    description: "Utiliza \"cd -\" para regresar al último directorio visitado.",
    commands: [
      "cd -",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Auto-completado de directorios",
    description: "Presiona la tecla Tab para auto-completar nombres de directorios mientras escribes.",
    commands: [
      "cd nomb<Tab>",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Navegación avanzada",
    description: "Explora directorios de manera avanzada utilizando combinaciones de comandos y atajos.",
    commands: [
      "cd /ruta/del/primer/directorio",
      "cd ../segundo/directorio",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Listar contenido del directorio actual",
    description: "Utiliza \"ls\" para listar el contenido del directorio actual después de cambiar de directorio.",
    commands: [
      "cd nombre_del_directorio",
      "ls",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Acceder a directorios con espacios en el nombre",
    description: "Cuando un directorio tiene espacios en el nombre, utilice comillas para acceder a él.",
    commands: [
      "cd \"directorio con espacios\"",
    ]
  ),
  MyDataModelCommand(
    type: 1,
    title: "Navegación rápida con atajos",
    description: "Configura atajos para navegar rápidamente a directorios frecuentemente utilizados.",
    commands: [
      "alias ir_trabajo='cd /ruta/trabajo'",
      "ir_trabajo",
    ]
  ),
  // Directorios (Type: 2)
  MyDataModelCommand(
    type: 2,
    title: "Crear directorio",
    description: "Crear un nuevo directorio en el sistema de archivos.",
    commands: [
      "mkdir nombre_del_directorio",
      "mkdir /path/nuevo_directorio",
    ]
  ),
  MyDataModelCommand(
    type: 2,
    title: "Eliminar directorio",
    description: "Eliminar un directorio vacío.",
    commands: [
      "rmdir nombre_del_directorio",
      "rmdir /path/directorio",
    ]
  ),

  // Contenido (Type: 3)
  MyDataModelCommand(
    type: 3,
    title: "Crear archivo",
    description: "Crear un nuevo archivo en el sistema de archivos.",
    commands: [
      "touch nombre_del_archivo",
      "touch /path/nuevo_archivo.txt",
    ]
  ),
  MyDataModelCommand(
    type: 3,
    title: "Mostrar contenido del archivo",
    description: "Mostrar el contenido de un archivo en la terminal.",
    commands: [
      "cat nombre_del_archivo",
      "cat /path/archivo.txt",
    ]
  ),

  // Edición (Type: 4)
  MyDataModelCommand(
    type: 4,
    title: "Editar archivo con nano",
    description: "Abrir un archivo para edición con el editor nano.",
    commands: [
      "nano nombre_del_archivo",
      "nano /path/archivo.txt",
    ]
  ),
  MyDataModelCommand(
    type: 4,
    title: "Editar archivo con vim",
    description: "Abrir un archivo para edición con el editor vim.",
    commands: [
      "vim nombre_del_archivo",
      "vim /path/archivo.txt",
    ]
  ),

  // Procesos (Type: 5)
  MyDataModelCommand(
    type: 5,
    title: "Listar procesos",
    description: "Mostrar una lista de procesos en ejecución.",
    commands: [
      "ps",
      "ps aux",
    ]
  ),
  MyDataModelCommand(
    type: 5,
    title: "Matar proceso",
    description: "Terminar un proceso en ejecución.",
    commands: [
      "kill ID_del_proceso",
      "killall nombre_del_proceso",
    ]
  ),

  // Usuarios y permisos (Type: 6)
  MyDataModelCommand(
    type: 6,
    title: "Ver usuarios conectados",
    description: "Mostrar la lista de usuarios conectados al sistema.",
    commands: [
      "who",
      "w",
    ]
  ),
  MyDataModelCommand(
    type: 6,
    title: "Cambiar permisos",
    description: "Cambiar los permisos de un archivo o directorio.",
    commands: [
      "chmod permisos nombre_del_archivo",
      "chmod 755 nombre_del_directorio",
    ]
  ),

  // Red (Type: 7)
  MyDataModelCommand(
    type: 7,
    title: "Ver información de red",
    description: "Mostrar información de red, como direcciones IP y conexiones.",
    commands: [
      "ifconfig",
      "ip a",
    ]
  ),
  MyDataModelCommand(
    type: 7,
    title: "Ping a una dirección",
    description: "Realizar un ping a una dirección IP o dominio.",
    commands: [
      "ping 8.8.8.8",
      "ping www.ejemplo.com",
    ]
  ),

  // Software (Type: 8)
  MyDataModelCommand(
    type: 8,
    title: "Instalar paquete",
    description: "Instalar un paquete de software en el sistema.",
    commands: [
      "sudo apt-get install nombre_del_paquete",
      "yum install nombre_del_paquete",
    ]
  ),
  MyDataModelCommand(
    type: 8,
    title: "Desinstalar paquete",
    description: "Desinstalar un paquete de software.",
    commands: [
      "sudo apt-get remove nombre_del_paquete",
      "yum erase nombre_del_paquete",
    ]
  ),

  // Búsqueda (Type: 9)
  MyDataModelCommand(
    type: 9,
    title: "Buscar archivos por nombre",
    description: "Buscar archivos en el sistema por su nombre.",
    commands: [
      "find /ruta -name nombre_del_archivo",
      "locate nombre_del_archivo",
    ]
  ),
  MyDataModelCommand(
    type: 9,
    title: "Buscar texto en archivos",
    description: "Buscar texto dentro de archivos en el sistema.",
    commands: [
      "grep 'texto' archivo.txt",
      "grep -r 'texto' /ruta",
    ]
  ),
];
