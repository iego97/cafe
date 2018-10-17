//
//  ViewControllerCarrito.swift
//  Los Alamos
//
//  Created by Alumno on 16/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerCarrito : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tbCarrito: UITableView!
    @IBOutlet weak var lblConfirmarPago: UILabel!
    
    var precioPagar : Double?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.DatosCarrito.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarrito") as! CeldaCarrito
        celda.imagenCarrito.image = Datos.DatosCarrito[indexPath.row].imagen
        celda.lblNombreProducto.text = Datos.DatosCarrito[indexPath.row].nombre
        celda.lblPrecio.text = Datos.DatosCarrito[indexPath.row].precio?.description
        celda.lblComplemento.text =
            "\(Datos.DatosCarrito[indexPath.row].complementos[0].complemento) : \(Datos.DatosCarrito[indexPath.row].complementos[0].cantidad?.description)"
        
        return celda
        
        
    }
    
    public func refrescar() {
        // code to load data from network, and refresh the interface
        tbCarrito.reloadData()
    }
    
    override func viewDidLoad() {
        
        precioPagar = 0
    
        for i in Datos.DatosCarrito    {
            
            precioPagar = precioPagar! + i.precio!
            
        }
        
        lblConfirmarPago.text = "Pagar: \(precioPagar)"
        
    }

    
    
    
    
}
