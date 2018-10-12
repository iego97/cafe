//
//  AgregarComentario.swift
//  Los Alamos
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class AgregarComentario : UIViewController {
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtComentario: UITextField!
    
    var producto : Productos?
    
    
    @IBAction func doTapAgregar(_ sender: Any) {
        
        let nombre = txtNombre.text!
        let comentario = txtComentario.text!
        
        producto?.comentarios.append(Comentario(usuario: nombre, comentario: comentario))
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    override func viewDidLoad() {
        
    }
}
