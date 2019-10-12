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
        
        let L1  = Modelo_Autos(Placa: "AAA-111", Conductor: "Jose", Marca: "Ford", Modelo: "Escape", Fabricacion: "2019", Imagen: UIImage(named: "Escape"))
        let L2 = Modelo_Autos(Placa: "BBB-222", Conductor: "Juan", Marca: "Toyota", Modelo: "Yaris", Fabricacion: "2009", Imagen: UIImage(named: "Yaris"))
        let L3 = Modelo_Autos(Placa: "CCC-444", Conductor: "Javier", Marca: "BMW", Modelo: "Mini cooper", Fabricacion: "2016", Imagen: UIImage(named: "Mini cooper"))
        let L4 = Modelo_Autos(Placa: "DDD-555", Conductor: "Juancha", Marca: "KIA", Modelo: "Soul", Fabricacion: "2018", Imagen: UIImage(named: "Soul"))
        let L5 = Modelo_Autos(Placa: "EEE-666", Conductor: "Pancracio", Marca: "Ford", Modelo: "Focus", Fabricacion: "2005", Imagen: UIImage(named: "Focus"))
        let L6 = Modelo_Autos(Placa: "DDD-777", Conductor: "LaChona", Marca: "Toyota", Modelo: "Mcqueen", Fabricacion: "2014", Imagen: UIImage(named: "Mcqueen"))
        
        tempLista.append(L1)
        tempLista.append(L2)
        tempLista.append(L3)
        tempLista.append(L4)
        tempLista.append(L5)
        tempLista.append(L6)
        
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
