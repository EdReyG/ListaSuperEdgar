//
//  LoginViewController.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 13/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{

    @IBOutlet weak var LoginEmailText: UITextField!
    
    @IBOutlet weak var LoginPasswordText: UITextField!
    
    var LoginEmail = "";
    var LoginPassword = "";
    var DBEmailStored = "";
    var DBPasswordStored = "";
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func LoginButton(_ sender: Any)
    {
        LoginEmail = LoginEmailText.text!;
        LoginPassword = LoginPasswordText.text!;
        
        DBEmailStored = UserDefaults.standard.string(forKey: "email")!;
        DBPasswordStored = UserDefaults.standard.string(forKey: "password")!;
        
        if(DBEmailStored == LoginEmail)
        {
            if(DBPasswordStored == LoginPassword)
            {
                //Login completado
                UserDefaults.standard.set(true, forKey:"userIsLoggedIn");
                UserDefaults.standard.synchronize();
                self.dismiss(animated: true, completion:nil);
            }
        }
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
