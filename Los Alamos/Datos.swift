//
//  Datos.swift
//  Los Alamos
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Datos{
    
    static var productos : [Productos] = [
        Productos(nombre: "Capuccino", precio: 30, imagen: UIImage(named: "capuccino")!, descripcion: "Delicioso capuccino con sabor único e inigualable", comentarios: [Comentario(usuario: "bbtin", comentario: "muy weno")], calificacion: 5),
        Productos(nombre: "Café molido", precio: 150, imagen: UIImage(named: "bolsaCafe")!, descripcion: "Café traído de las altas tierras de Álamos", comentarios: [Comentario(usuario: "pabloSanchez69", comentario: "ta wena la bolsita")], calificacion: 3),
        Productos(nombre: "Café Americano", precio: 25, imagen: UIImage(named: "cafeAmericano")!, descripcion: "Café americano con sabor fuerte pero delicioso", comentarios: [Comentario(usuario: "MarianaF", comentario: "Ta weno y es gringo")], calificacion: 4),
        Productos(nombre: "Chocolate Caliente", precio: 30, imagen: UIImage(named: "chocolateCaliente")!, descripcion: "Chocolate caliente con sabor de la abuelita", comentarios: [Comentario(usuario: "MinnethG", comentario: "Ta weno el chocolate")], calificacion: 2),
        Productos(nombre: "Frapuccino Moka", precio: 40, imagen: UIImage(named: "frapuccinoMoka")!, descripcion: "Cremoso frapuccino para disfrutar en la oficina", comentarios: [Comentario(usuario: "Xbenja123", comentario: "Ta weno el frapushino")], calificacion: 5),
        Productos(nombre: "Café Moka", precio: 35, imagen: UIImage(named: "moka")!, descripcion: "Delicioso café moka para disfrutar en el desayuno", comentarios: [Comentario(usuario: "Anyloib", comentario: "ta weno pero sólo si es en el desayuno")], calificacion: 3),
        Productos(nombre: "Té azúl", precio: 200, imagen: UIImage(named: "teAzul")!, descripcion: "Té de origen misterioso con grandes propiedades saludables", comentarios: [Comentario(usuario: "ChavezDavid", comentario: "Sabe a pitufo")], calificacion: 3),
        Productos(nombre: "Té verde", precio: 15, imagen: UIImage(named: "teVerde")!, descripcion: "Té verde perfecto para cuidar tu físico", comentarios: [Comentario(usuario: "Rafavzl69", comentario: "Yo soy muy fits y me sirve mucho")], calificacion: 4),
        Productos(nombre: "Té de peyote", precio: 1200, imagen: UIImage(named: "tePeyote")!, descripcion: "Té para alejar las malas vibras y limpiar el espiritu", comentarios: [Comentario(usuario: "LCorbala", comentario: "Si pone")], calificacion: 5),
        Productos(nombre: "Té chai", precio: 30, imagen: UIImage(named: "teChai")!, descripcion: "Té relajante delicioso para cualquier ocasión", comentarios: [Comentario(usuario: "HugoG", comentario: "ta weno y relajante")], calificacion: 2)
        
    ]
    
     static var DatosCarrito: [Carrito] = []
    
    
    
}
