//
//  CargasViewController.swift
//  ProyectoParcialDos
//
//  Created by Alumno on 10/11/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class CargasViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tb_CargasGasolina: UITableView!
    var CargasGasolina : [modelo_CargaGasolina] = []
    
    @IBOutlet weak var btn_Guardar: UIBarButtonItem!
    
    var AutoCreado : Modelo_Autos?
    var estadoBoton : Bool?
    
    var callbackAgregarCarga : ((modelo_CargaGasolina) -> Void)?
    
    var editAuto : ((Modelo_Autos) -> Void)?
    
    
    @IBOutlet weak var tf_Placa: UITextField!
    @IBOutlet weak var tf_Conductor: UITextField!
    @IBOutlet weak var tf_Marca: UITextField!
    @IBOutlet weak var tf_Modelo: UITextField!
    @IBOutlet weak var tf_Año: UITextField!

    @IBOutlet weak var tf_imagen: UIImageView!
    
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
            
            let NuevoModelo = Modelo_Autos(Placa: tf_Placa.text!, Conductor: tf_Conductor.text, Marca: tf_Marca.text, Modelo: tf_Modelo.text, Fabricacion: tf_Año.text, Imagen: tf_imagen.image)
            
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
        tf_imagen.image = AutoCreado?.Imagen
        
        tf_Placa.isEnabled = false
        tf_Conductor.isEnabled = false
        tf_Marca.isEnabled = false
        tf_Modelo.isEnabled = false
        tf_Año.isEnabled = false
        
        CargasGasolina = createArray()
    }
    
    
    func createArray() -> [modelo_CargaGasolina] {
        var tempCarga: [modelo_CargaGasolina] = []
        
        let Carga1 = modelo_CargaGasolina(Cantidad: "500.00", Litros: "2.50L")
        let Carga2 = modelo_CargaGasolina(Cantidad: "50.00", Litros: "1.50L")
        let Carga3 = modelo_CargaGasolina(Cantidad: "5.00", Litros: "0.50L")
        
        tempCarga.append(Carga1)
        tempCarga.append(Carga2)
        tempCarga.append(Carga3)
        
        return tempCarga
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CargasGasolina.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellGasolina") as! CeldaCargaTableViewCell
        
        cell.lbl_Cantidad.text = CargasGasolina[indexPath.row].Cantidad
        cell.lbl_Litros.text = CargasGasolina[indexPath.row].Litros
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToAgregarNuevaCarga"{
            
            let controllerDestination = segue.destination as? CargaGasolinaController
            controllerDestination?.callbackAgregarCarga = callbackAgregarCarga 
        }
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            self.CargasGasolina.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }
    
    
    
}
