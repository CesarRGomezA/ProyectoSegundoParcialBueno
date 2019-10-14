//
//  CeldaCargaTableViewCell.swift
//  ProyectoParcialDos
//
//  Created by Cesar Gomez on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class CeldaCargaTableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_Cantidad: UILabel!
    @IBOutlet weak var lbl_Litros: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(Modelo: modelo_CargaGasolina)
    {
        lbl_Cantidad.text = Modelo.Cantidad
        lbl_Litros.text = Modelo.Litros
    }

}
