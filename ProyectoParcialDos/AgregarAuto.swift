//
//  AgregarAuto.swift
//  ProyectoParcialDos
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class AgregarAuto: UIViewController {

    var nuevoAuto : ((Modelo_Autos) -> Void)?
    
    @IBOutlet weak var tf_Placa: UITextField!
    @IBOutlet weak var tf_conductor: UITextField!
    @IBOutlet weak var tf_Marca: UITextField!
    @IBOutlet weak var tf_Modelo: UITextField!
    @IBOutlet weak var tf_Año: UITextField!
    
    
    @IBAction func act_AgregarCarro(_ sender: Any) {
        
        let NuevoModelo = Modelo_Autos(Placa: tf_Placa.text!, Conductor: tf_conductor.text, Marca: tf_Marca.text, Modelo: tf_Modelo.text, Fabricacion: tf_Año.text, Imagen: UIImage(named: "Carro"))
        
        nuevoAuto?(NuevoModelo)
        
        navigationController?.popViewController(animated: true)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  

}
