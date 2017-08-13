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
        if(NombreUser.isEmpty || EmailUser.isEmpty || (PasswordUser.isEmpty) || (RepeatPasswordUser.isEmpty))
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
        
        //Guardar la información
        UserDefaults.standard.set(NombreUser, forKey:"nombre");
        UserDefaults.standard.set(EmailUser, forKey:"email");
        UserDefaults.standard.set(PasswordUser, forKey:"password");
        UserDefaults.standard.synchronize();
        
        let myAlert = UIAlertController(title: "Alert", message: "Registro exitoso. ¡Gracias!", preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.default)
        
            self.dismiss(animated:true, completion:nil);
        
        
        myAlert.addAction(okAction);
        self.present(myAlert, animated:true, completion:nil);
        
        
    }
    
    @IBAction func YaHayCuentaButton(_ sender: Any)
    {
        self.dismiss(animated:true, completion:nil);
    }
   

    func displayMyAlertMessage(userMessage:String)
    {
        let myAlert = UIAlertController(title:"Alerta", message: userMessage, preferredStyle: UIAlertControllerStyle.alert);
        
        let okAction = UIAlertAction(title: "Ok", style:UIAlertActionStyle.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated:true, completion:nil);
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
