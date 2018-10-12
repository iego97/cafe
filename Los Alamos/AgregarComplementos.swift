//
//  AgregarComplementos.swift
//  Los Alamos
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarComplementos : UIViewController{
    
    var producto : Productos?
    
    var complementos : [Complemento] = []
    
    var carrito : Carrito?
    
    
    @IBOutlet weak var imgProductoComplemento: UIImageView!
    
    @IBOutlet weak var switchAzucar: UISwitch!
    @IBOutlet weak var switchStevia: UISwitch!
    @IBOutlet weak var switchCanela: UISwitch!
    @IBOutlet weak var switchVainilla: UISwitch!
    
    
    @IBOutlet weak var tapperAzucar: UIStepper!
    
    @IBOutlet weak var lblCantidadAzucar: UILabel!
    
    @IBAction func doTapAgregarCarrito(_ sender: Any) {
        
        carrito = Carrito(nombre: (producto?.nombreProducto)!, precio: (producto?.precio)!, complementos: complementos, imagen: (producto?.imagenProducto)!)
        
    }
    
    
    override func viewDidLoad() {
        
        imgProductoComplemento.image = producto?.imagenProducto
        
        if switchAzucar.isOn == true
        {
            tapperAzucar.isHidden = false
            
            
            let nombreComplemento = "Azucar"
            
            complementos.append(Complemento(nombre: nombreComplemento, cantidad: tapperAzucar.value))
            
            lblCantidadAzucar.text = tapperAzucar.value.description
            
            
        }
    }
    
    
}
