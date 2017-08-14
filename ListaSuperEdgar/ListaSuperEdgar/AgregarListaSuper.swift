//
//  AgregarListaSuper.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 13/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit

var Lista = [""];
var temp = [""];

class AgregarListaSuper: UIViewController
{
    
    
    @IBOutlet weak var ImgSuper: UIImageView!
    var AgregarImg: UIImage?
    
    
    @IBOutlet weak var InputMandado: UITextField!
    
    //Agregar mandado al arreglo de TableView
    @IBAction func ButtonAgregarLista(_ sender: Any)
    {
        if(InputMandado.text != "")
        {
            Listas.append(InputMandado.text!)
            InputMandado.text = ""
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.ImgSuper.image = UIImage.init(named: "superImg.jpg")

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
