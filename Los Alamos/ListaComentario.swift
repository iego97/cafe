//
//  ListaComentario.swift
//  Los Alamos
//
//  Created by Alumno on 12/10/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ListaComentario : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var comentarios: [Comentario]?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (comentarios?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: <#T##String#>)
        
    }
    
    
    
    
}
