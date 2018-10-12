//
//  Productos.swift
//  Los Alamos
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Productos{
    
    var nombreProducto : String?
    var precio : Double?
    var imagenProducto : UIImage?
    var descripcion : String?
    var comentarios: [Comentario] = []
    var calificacion : Int?
    
    init(nombre : String, precio : Double, imagen : UIImage, descripcion : String?, comentarios:[Comentario], calificacion : Int)
    {
        self.nombreProducto = nombre
        self.precio = precio
        self.imagenProducto = imagen
        self.descripcion = descripcion
        self.comentarios = comentarios
        self.calificacion = calificacion
        
    }
    
    
}
