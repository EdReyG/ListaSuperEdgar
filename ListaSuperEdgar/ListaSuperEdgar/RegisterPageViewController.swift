//
//  RegisterPageViewController.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 12/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit

class RegisterPageViewController: UIViewController {

    @IBOutlet weak var NombreUserText: UITextField!
    
    @IBOutlet weak var EmailUserText: UITextField!
    
    @IBOutlet weak var PasswordUserText: UITextField!
    
    @IBOutlet weak var RepeatPasswordUserText: UITextField!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var NombreUser = "";
    var EmailUser = "";
    var PasswordUser = "";
    var RepeatPasswordUser = "";
    
    @IBAction func RegistroCuentaButton(_ sender: Any)
    {
    
        NombreUser  = NombreUserText.text!;
        EmailUser  = EmailUserText.text!;
        PasswordUser = PasswordUserText.text!;
        RepeatPasswordUser = RepeatPasswordUserText.text!;
        
        //Checar espacios vacios
      /*  if(NombreUser.isEmpty || EmailUser!.isEmpty || (PasswordUser!.isEmpty) || (RepeatPasswordUser!.isEmpty))
        {
            //Mensaje de alerta
            displayMyAlertMessage(userMessage: "Se requieren todos los espacios");
            return;
        }
        
        //Checar contraseñas
        if(PasswordUser !=  RepeatPasswordUser)
        {
            //Mensaje de alerta
            displayMyAlertMessage(userMessage: "Las contraseñas no coinciden");
            return;
        }
        
    }
    
    //Guardar la información en la base de datos
    NSUserDefaults.standardUserDefaults().setObject(NombreUser, forKey:"nombre");
    NSUserDefaults.standardUserDefaults().setObject(EmailUser, forKey:"email");
    NSUserDefaults.standardUserDefaults().setObject(PasswordUser, forKey:"password");
    NSUserDefaults.standardUserDefaults().synchronize();

    func displayMyAlertMessage(userMessage:String)
    {
        var myAlert = UIAlertController(nibName:"Alerta", bundle: userMessage);
        
        let okAction = UIAlertAction(title: "Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.presentViewController(myAlert, animated:true, completion:nil);
    } */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    }
}
