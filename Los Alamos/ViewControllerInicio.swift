//
//  ViewController.swift
//  Los Alamos
//
//  Created by Alumno on 10/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewControllerInicio: UIViewController {

    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func doTapLogin(_ sender: Any) {
        if (txtUsuario.text != nil) && (txtPassword.text != nil)
        {
           performSegue(withIdentifier: "goToMenu", sender: self)
        }else{
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

