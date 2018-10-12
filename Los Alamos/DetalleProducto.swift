//
//  DetalleProducto.swift
//  Los Alamos
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetalleProducto : UIViewController{
    
    
    var producto : Productos?
    
    @IBOutlet weak var imgDetalleProducto: UIImageView!
    @IBOutlet weak var imgEstrella1: UIImageView!
    @IBOutlet weak var imgEstrella2: UIImageView!
    @IBOutlet weak var imgEstrella3: UIImageView!
    @IBOutlet weak var imgEstrella4: UIImageView!
    @IBOutlet weak var imgEstrella5: UIImageView!
    @IBOutlet weak var lblPrecio: UILabel!
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblUltimoUsuario: UILabel!
    @IBOutlet weak var lblUltimoComentario: UILabel!
    
    @IBOutlet weak var imgAgregar: UIImageView!
    
    
    override func viewDidLoad() {
        
        if producto?.calificacion == 1
        {
            imgEstrella1.image = UIImage(named: "star")
        }else if producto?.calificacion == 2
        {
            imgEstrella1.image = UIImage(named: "star")
            imgEstrella2.image = UIImage(named: "star")
        }else if producto?.calificacion == 3
        {
            imgEstrella1.image = UIImage(named: "star")
            imgEstrella2.image = UIImage(named: "star")
            imgEstrella3.image = UIImage(named: "star")
        }else if producto?.calificacion == 4
        {
            imgEstrella1.image = UIImage(named: "star")
            imgEstrella2.image = UIImage(named: "star")
            imgEstrella3.image = UIImage(named: "star")
            imgEstrella4.image = UIImage(named: "star")
        }else if producto?.calificacion == 5
        {
            imgEstrella1.image = UIImage(named: "star")
            imgEstrella2.image = UIImage(named: "star")
            imgEstrella3.image = UIImage(named: "star")
            imgEstrella4.image = UIImage(named: "star")
            imgEstrella5.image = UIImage(named: "star")
        }
        
        imgDetalleProducto.image = producto?.imagenProducto
        

        imgAgregar.image = UIImage(named: "add")
        
        let precio = producto?.precio?.description
        lblPrecio.text = precio
        
        lblDescripcion.text = producto?.descripcion
        
        self.title = producto?.nombreProducto
        
        if(producto?.comentarios.count)! > 0{
            
            let ultimoComentario = producto?.comentarios[(producto?.comentarios.count)! - 1]
            
            lblUltimoUsuario.text = ultimoComentario?.usuario
            lblUltimoComentario.text = ultimoComentario?.comentario
            
        }
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToListaComentarios"
        {
           let destino = segue.destination as! ListaComentario
            destino.comentarios = producto?.comentarios
            
        }else if segue.identifier == "goToAgregarComentario"
        {
            
        }
    }
    
}
