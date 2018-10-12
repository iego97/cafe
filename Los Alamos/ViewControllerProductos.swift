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
    
    
    @IBOutlet weak var tbProductos: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datos.productos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaProducto") as!CeldaProducto
        
        celda.imageViewProducto.image = Datos.productos[indexPath.row].imagenProducto
        celda.lblNombreProducto.text = Datos.productos[indexPath.row].nombreProducto
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetalleProducto
        destino.producto = Datos.productos[(tbProductos.indexPathForSelectedRow?.row)!]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Productos"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
