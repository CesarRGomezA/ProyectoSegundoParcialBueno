//
//  CargaGasolinaController.swift
//  ProyectoParcialDos
//
//  Created by Cesar Gomez on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class CargaGasolinaController: UIViewController {

    @IBOutlet weak var tf_Cantidad: UITextField!
    @IBOutlet weak var tf_Litros: UITextField!
    
    var callbackAgregarCarga: ((modelo_CargaGasolina) -> Void)?
    
    @IBAction func btn_AgregarCarga(_ sender: Any) {
        
        let cargaGasolina = modelo_CargaGasolina(Cantidad: tf_Cantidad.text!, Litros: tf_Litros.text!)
     
        callbackAgregarCarga!(cargaGasolina)
        
        self.navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

}
