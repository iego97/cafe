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
    var precio : Int?
    var imagenProducto : UIImage?
    var descripcion : String?
    var comentarios: [Comentario?] = []
    
    init(nombre : String, precio : Int, imagen : UIImage, descripcion : String, comentarios:[Comentario])
    {
        self.nombreProducto = nombre
        self.precio = precio
        self.imagenProducto = imagen
        self.descripcion = descripcion
        self.comentarios = comentarios
        
    }
    
    
}
