//
//  ViewControllerProductos.swift
//  Los Alamos
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerProductos : UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaProducto") as!CeldaProducto
        
        celda.imageViewAgregar.image = UIImage(named: "add")
        celda.imageViewInfo.image = UIImage(named: "info")
        celda.imageViewProducto.image = Datos.productos[indexPath.row].imagenProducto
        celda.lblNombreProducto.text = Datos.productos[indexPath.row].nombreProducto
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    
}
