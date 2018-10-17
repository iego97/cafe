//
//  AgregarComplementos.swift
//  Los Alamos
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit


var complementos : [String] =  ["Azucar","Stevia","Canela","Tierra del congo"]

class AgregarComplementos : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return complementos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(complementos[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nombreComplemento = complementos[row]
    }
    
    
    
    @IBAction func editingBegin(_ sender: Any) {
        pickerComplementos.isHidden = false
        btnAgregar.isHidden = false
        lblPrecioProducto.isHidden = true
    }
    
    
    @IBAction func doTapAgregarComplemeto(_ sender: Any) {
        pickerComplementos.isHidden = true
        btnAgregar.isHidden = true
        txtPickerView.endEditing(true)
        txtPickerView.text = nombreComplemento
        btnConfirmarComplemento.isHidden = false
        cantidadComplementos = stepperCantidad.value
        lblPrecioProducto.isHidden = false
        stepperCantidad.isHidden = false
        lblCantidadComplementos.isHidden = false
        btnConfirmarComplemento.isHidden = false
    }
    
    
    @IBAction func doTapAgregarCantidadComplemento(_ sender: Any) {
        lblCantidadComplementos.text = stepperCantidad.value.description
       
    }
    
    
    @IBAction func doTapConfirmarComplemento(_ sender: Any) {
        
        stepperCantidad.isHidden = true
        lblCantidadComplementos.isHidden = true
        btnConfirmarComplemento.isHidden = true
        lblComplementoAgregado.isHidden = false
        txtPickerView.text = ""
        
        complementosCarrito.append(Complemento(nombre: nombreComplemento!, cantidad: cantidadComplementos!))
        
        
       
        
    }
    
    @IBOutlet weak var imgProductoComplemento: UIImageView!
    
    @IBOutlet weak var lblPrecioProducto: UILabel!
    @IBOutlet weak var lblCantidadComplementos: UILabel!
    @IBOutlet weak var pickerComplementos: UIPickerView!
    @IBOutlet weak var btnAgregar: UIButton!
    @IBOutlet weak var stepperCantidad: UIStepper!
    @IBOutlet weak var txtPickerView: UITextField!
    @IBOutlet weak var btnConfirmarComplemento: UIButton!
    @IBOutlet weak var lblComplementoAgregado: UILabel!
    
    var producto : Productos?
    var complementosCarrito : [Complemento] = []
    var carrito : Carrito?
    var cantidadComplementos : Double?
    var nombreComplemento : String?
    
    
    
    
    
    
    override func viewDidLoad() {
        
        
        let botonSiguiente = UIBarButtonItem(title: "Confirmar", style: .done, target: self, action: #selector(confirmar))
        
        self.navigationItem.rightBarButtonItem = botonSiguiente
        
        
        imgProductoComplemento.image = producto?.imagenProducto
        lblPrecioProducto.text = producto?.precio?.description
        
        
        
      
    }
    
    @objc func confirmar(){
        
        
        
        performSegue(withIdentifier: "goBackProductos", sender: self)
        
        carrito = Carrito(nombre: (producto?.nombreProducto)!, precio: (producto?.precio)!, complementos: complementosCarrito, imagen: (producto?.imagenProducto)!)
        
        

        Datos.DatosCarrito.append(carrito!)
        
        
       
    
        
        
    }
    
}
