
import 'package:flutter/material.dart';

//Tipos de Comandos
//1: Navegación
//2: Directorios
//3: Contenido
//4: Edición
//5: Procesos
//6: Usuarios y permisos
//7: Red
//8: Software
//9: Busqueda

class MyDataModelCommand{
  final int type;
  final String title;
  final String description;
  final List<String> commands;
  MyDataModelCommand({
    required this.type,
    required this.title,
    required this.description,
    required this.commands,
  });
}


class MyDataModelDistro {
  final String name;
  final String? version;
  final List<Widget>? desktop;
  final String? packageManager;
  final String? architecture;
  final String? urlWeb;
  final String? urlIcon;
  final DateTime? releaseDate;
  final String? description;
  final String? base;

  MyDataModelDistro({
    required this.name,
    this.version,
    this.desktop,
    this.packageManager,
    this.architecture,
    this.urlWeb,
    this.urlIcon,
    this.releaseDate,
    this.description,
    this.base,
  });
}


