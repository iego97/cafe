//
//  ViewControllerUsuario.swift
//  Los Alamos
//
//  Created by alebaidon on 10/17/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit


class ViewControllerUsuario : UIViewController {
    
    
    static var nombre : String? = "Eduardo Ortega"
    static var ciudad : String? = "Hermosillo"
    static var correo : String? = "iramgarcia97@gmail.com"
    
    @IBOutlet weak var imgPerfil: UIImageView!
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblCiudad: UILabel!
    @IBOutlet weak var lblCorreo: UILabel!
 
    override func viewDidLoad() {
        
    }
    
}
