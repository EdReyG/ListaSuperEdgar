//
//  TableViewListas.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 13/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit

var Listas = [""]

class TableViewListas: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var TableListas: UITableView!
    
    //Muestra en la TableView el numero de elementos en el arreglo de listas
    public func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (Listas.count)
    }
    
    //Mostrar la información de las celdas
    public func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "CellLista")
        cell.textLabel?.text = Listas[indexPath.row]
        return (cell)
    }
    
    //Función para eliminar elementos del TableView
    func tableView(_ tableView:UITableView, commit eidtingStyle:UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if(eidtingStyle == UITableViewCellEditingStyle.delete)
        {
            Listas.remove(at: indexPath.row)
            TableListas.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        TableListas.reloadData()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Regresar al View del mapa
    @IBAction func RegresoMapa(_ sender: Any)
    {
        self.performSegue(withIdentifier: "RegresoMapa", sender: self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
