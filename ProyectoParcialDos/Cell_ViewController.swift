//
//  Cell_ViewController.swift
//  ProyectoParcialDos
//
//  Created by MaestroD1 on 10/9/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class Cell_ViewController: UITableViewCell {

    @IBOutlet weak var lbl_Conductor: UILabel!
    @IBOutlet weak var lbl_Marca: UILabel!
    @IBOutlet weak var lbl_Fabricacion: UILabel!
    @IBOutlet weak var lbl_Matricula: UILabel!
    @IBOutlet weak var lbl_Modelo: UILabel!
    @IBOutlet weak var imgCarro: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func set(Modelo: Modelo_Autos){
        
    lbl_Conductor.text = Modelo.Conductor
    lbl_Marca.text = Modelo.Marca
    lbl_Fabricacion.text = Modelo.Fabricacion
    lbl_Matricula.text = Modelo.Placa
    lbl_Modelo.text = Modelo.Modelo
    imgCarro.image = Modelo.Imagen
        
        
        
    }


}
