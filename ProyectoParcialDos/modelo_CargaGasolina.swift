//
//  modelo_CargaGasolina.swift
//  ProyectoParcialDos
//
//  Created by Cesar Gomez on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation

import UIKit

class modelo_CargaGasolina {
    
    var Cantidad : String?
    var Litros : String?
    var Placas : String?
    
    init(Cantidad : String, Litros : String, Placas : String) {
        self.Cantidad = Cantidad
        self.Litros = Litros
        self.Placas = Placas
        
    }
    
    init(Cantidad : String, Litros : String) {
        self.Cantidad = Cantidad
        self.Litros = Litros
        
    }
    
}
