//
//  Carrito.swift
//  Los Alamos
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Carrito{
    
    var nombre : String?
    var precio : Double?
    var complementos : [Complemento] = []
    var imagen : UIImage
    
    init(nombre: String, precio : Double, complementos : [Complemento], imagen : UIImage)
    {
        self.nombre = nombre
        self.precio = precio
        self.complementos = complementos
        self.imagen = imagen
    }
    
}
