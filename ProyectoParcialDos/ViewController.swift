//
//  ViewController.swift
//  ProyectoParcialDos
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var Lista : [Modelo_Autos] = []
    var Fila : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    tableView.dataSource = self
    tableView.delegate = self
    Lista = createArray()
    
    }
    
    func createArray() -> [Modelo_Autos]{
        var tempLista: [Modelo_Autos] = []
        
        let L1  = Modelo_Autos(Placa: "CCC-222", Conductor: "Jose", Marca: "Ford", Modelo: "Escape", Fabricacion: "2019")
        let L2 = Modelo_Autos(Placa: "CCC-333", Conductor: "Juan", Marca: "Toyota", Modelo: "Yaris", Fabricacion: "2009")
        
        tempLista.append(L1)
        tempLista.append(L2)
        
        
        return tempLista
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNuevoAuto"{
            
            let controllerDestination = segue.destination as? AgregarAuto
            
            controllerDestination?.nuevoAuto = nuevoAuto
            
        }
        if segue.identifier == "goToCargas"{
            
            let controllerDestination = segue.destination as? CargasViewController
            
            let indexPath = tableView.indexPath(for: (sender as? UITableViewCell)!)
            
            let listDestination = Lista[indexPath!.row]
            
            Fila = indexPath?.row
            
            controllerDestination?.AutoCreado = listDestination
            controllerDestination?.editAuto = editarAuto
            
        }
        
    }
    
    func nuevoAuto(auto : Modelo_Autos) {
        
        Lista.append(auto)
        tableView.reloadData()
    }
    
    func editarAuto(auto : Modelo_Autos) {
        
        Lista[Fila!] = auto
        tableView.reloadData()
    }
    
    


}
extension ViewController :UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell_ViewController
        
        let list = Lista[indexPath.row]
        
        cell.set(Modelo: list)
        
        return cell
        
    }
    

    
    
    
    
    
    
}
