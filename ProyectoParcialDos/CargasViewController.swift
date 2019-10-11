//
//  CargasViewController.swift
//  ProyectoParcialDos
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class CargasViewController: UIViewController {

    @IBOutlet weak var btn_Guardar: UIBarButtonItem!
    var AutoCreado : Modelo_Autos?
    var estadoBoton : Bool?
    
    var editAuto : ((Modelo_Autos) -> Void)?
    
    
    @IBOutlet weak var tf_Placa: UITextField!
    @IBOutlet weak var tf_Conductor: UITextField!
    @IBOutlet weak var tf_Marca: UITextField!
    @IBOutlet weak var tf_Modelo: UITextField!
    @IBOutlet weak var tf_Año: UITextField!
    @IBAction func act_Editar(_ sender: Any) {
        
        if estadoBoton == false{
            
        btn_Guardar.title = "Guardar"
        
        tf_Placa.isEnabled = true
        tf_Conductor.isEnabled = true
        tf_Marca.isEnabled = true
        tf_Modelo.isEnabled = true
        tf_Año.isEnabled = true
            
        estadoBoton = true
            
        }
        else{
            
            let NuevoModelo = Modelo_Autos(Placa: tf_Placa.text!, Conductor: tf_Conductor.text, Marca: tf_Marca.text, Modelo: tf_Modelo.text, Fabricacion: tf_Año.text)
            
            editAuto!(NuevoModelo)
            
            estadoBoton = false
            
            navigationController?.popViewController(animated: true)
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        estadoBoton = false
        
        tf_Placa.text = AutoCreado?.Placa
        tf_Conductor.text = AutoCreado?.Conductor
        tf_Marca.text = AutoCreado?.Marca
        tf_Modelo.text = AutoCreado?.Modelo
        tf_Año.text = AutoCreado?.Fabricacion
        
        
        tf_Placa.isEnabled = false
        tf_Conductor.isEnabled = false
        tf_Marca.isEnabled = false
        tf_Modelo.isEnabled = false
        tf_Año.isEnabled = false
        
        

    }
    

  
}
