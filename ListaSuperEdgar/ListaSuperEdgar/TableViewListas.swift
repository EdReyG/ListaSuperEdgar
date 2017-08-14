//
//  TableViewListas.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 13/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit

var Vacia = "No hay ninguna lista";
var Listas = [Vacia]

class TableViewListas: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    @IBOutlet weak var TableListas: UITableView!
    
    public func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (Listas.count)
    }
    
    public func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "CellLista")
        cell.textLabel?.text = Listas[indexPath.row]
        return (cell)
    }
    
    func tableView(_ tableView:UITableView, commit eidtingStyle:UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        /*if(eidtingStyle == UITableViewCellEditingStyle.delete)
        {
            self.Listas.remove(at: indexPath.row)
            myTableView.reloadData()
        }*/
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
