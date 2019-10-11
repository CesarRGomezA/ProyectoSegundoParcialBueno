//
//  Modelo.swift
//  ProyectoParcialDos
//
//  Created by MaestroD1 on 10/9/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation


class Modelo_Autos  {
    var Placa: String
    var Conductor : String?
    var Marca : String?
    var Modelo : String?
    var Fabricacion : String?
    
    init(Placa: String,Conductor : String?,Marca : String?,Modelo : String?,Fabricacion : String?) {
        
        self.Placa = Placa
        
        if let M_conductor = Conductor{
            self.Conductor = M_conductor
        }
        if let M_marca = Marca{
            self.Marca = M_marca
        }
        if let M_modelo = Modelo{
            self.Modelo = M_modelo
        }
        if let M_fabricacion = Fabricacion{
            self.Fabricacion = M_fabricacion
        }
        
    }
    
}
