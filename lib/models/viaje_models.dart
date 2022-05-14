// To parse this JSON data, do
//
//     final viaje = viajeFromMap(jsonString);

import 'dart:convert';

class Viaje {
    Viaje({
       required this.viajes,
    });

    List<ViajeElement> viajes;

    factory Viaje.fromJson(String str) => Viaje.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Viaje.fromMap(Map<String, dynamic> json) => Viaje(
        viajes: List<ViajeElement>.from(json["viajes"].map((x) => ViajeElement.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "viajes": List<dynamic>.from(viajes.map((x) => x.toMap())),
    };
}

class ViajeElement {
    ViajeElement({
        required this.id,
        required this.numeroViaje,
        required this.origen,
        required this.llegada,
        required this.usuario,
        required this.vehiculo,
        required this.fecha,
        this.pasajero,
        this.v,
        this.horaFin,
        this.horaInicio,
        this.kmFin,
        this.kmInicio,
        this.ingreso,
        required this.estado,
        required this.tipoViaje,
    });

    String id;
    String numeroViaje;
    String origen;
    String llegada;
    Usuario usuario;
    Vehiculo vehiculo;
    DateTime fecha;
    List<Pasajero>? pasajero;
    int? v;
    String? horaFin;
    String? horaInicio;
    String? kmFin;
    String? kmInicio;
    String? ingreso;
    bool estado;
    String tipoViaje;

    factory ViajeElement.fromJson(String str) => ViajeElement.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ViajeElement.fromMap(Map<String, dynamic> json) => ViajeElement(
        id: json["_id"],
        numeroViaje: json["numeroViaje"],
        origen: json["origen"],
        llegada: json["llegada"],
        usuario: Usuario.fromMap(json["usuario"]),
        vehiculo: Vehiculo.fromMap(json["vehiculo"]),
        fecha: DateTime.parse(json["fecha"]),
        pasajero: List<Pasajero>.from(json["pasajero"].map((x) => Pasajero.fromMap(x))),
        v: json["__v"],
        horaFin: json["hora_fin"],
        horaInicio: json["hora_inicio"],
        kmFin: json["km_fin"],
        kmInicio: json["km_inicio"],
        ingreso: json["ingreso"],
        estado: json["estado"],
        tipoViaje: json["tipo_viaje"],
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "numeroViaje": numeroViaje,
        "origen": origen,
        "llegada": llegada,
        "usuario": usuario.toMap(),
        "vehiculo": vehiculo.toMap(),
        "fecha": fecha.toIso8601String(),
        "pasajero": pasajero,
        "__v": v,
        "hora_fin": horaFin,
        "hora_inicio": horaInicio,
        "km_fin": kmFin,
        "km_inicio": kmInicio,
        "ingreso": ingreso,
        "estado": estado,
        "tipo_viaje": tipoViaje,
    };
}

class Pasajero {
    Pasajero({
        this.dni,
        this.cuenta,
        this.id,
    });

    String? dni;
    Usuario? cuenta;
    String? id;

    factory Pasajero.fromJson(String str) => Pasajero.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Pasajero.fromMap(Map<String, dynamic> json) => Pasajero(
        dni: json["dni"],
        cuenta: Usuario.fromMap(json["cuenta"]),
        id: json["_id"],
    );

    Map<String, dynamic> toMap() => {
        "dni": dni,
        "cuenta": cuenta,
        "_id": id,
    };
}

class Usuario {
    Usuario({
        required this.nombre,
    });

     String nombre;

    factory Usuario.fromJson(String str) => Usuario.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
        nombre: json["nombre"],
    );

    Map<String, dynamic> toMap() => {
        "nombre": [nombre],
    };
}



class Vehiculo {
    Vehiculo({
        required this.id,
        required this.placa,
        required this.marca,
        required this.modelo,
        required this.asientos,
    });

    String id;
    String placa;
    String marca;
    String modelo;
    int asientos;

    factory Vehiculo.fromJson(String str) => Vehiculo.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Vehiculo.fromMap(Map<String, dynamic> json) => Vehiculo(
        id: json["_id"],
        placa: json["placa"],
        marca: json["marca"],
        modelo: json["modelo"],
        asientos: json["asientos"],
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "placa": placa,
        "marca": marca,
        "modelo": modelo,
        "asientos": asientos,
    };
}






class UsuarioElement {
    UsuarioElement({
        required this.nombre,
    });

    String nombre;

    factory UsuarioElement.fromJson(String str) => UsuarioElement.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory UsuarioElement.fromMap(Map<String, dynamic> json) => UsuarioElement(
        nombre: json["nombre"],
    );

    Map<String, dynamic> toMap() => {
        "nombre": nombre,
    };
}

class VehiculoElement {
    VehiculoElement({
        required this.id,
        required this.placa,
        required this.marca,
        required this.modelo,
        required this.asientos,
    });

    String id;
    String placa;
    String marca;
    String modelo;
    int asientos;

    factory VehiculoElement.fromJson(String str) => VehiculoElement.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory VehiculoElement.fromMap(Map<String, dynamic> json) => VehiculoElement(
        id: json["_id"],
        placa: json["placa"],
        marca: json["marca"],
        modelo: json["modelo"],
        asientos: json["asientos"],
    );

    Map<String, dynamic> toMap() => {
        "_id": id,
        "placa": placa,
        "marca": marca,
        "modelo": modelo,
        "asientos": asientos,
    };
}




