//
//  ViewController.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 11/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var isUserLoggedIn = false;
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.performSegue(withIdentifier: "LoginView", sender: self);
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    

    override func viewDidAppear(_ animated: Bool)
    {
        
        isUserLoggedIn = UserDefaults.standard.bool(forKey: "userIsLoggedIn");
        if(!isUserLoggedIn)
        {
            self.performSegue(withIdentifier: "LoginView", sender: self);
        }   
    }
    
    
    @IBAction func LogoutButton(_ animated: Bool)
    {
        UserDefaults.standard.set(false, forKey:"userIsLoggedIn");
        UserDefaults.standard.synchronize();
        self.performSegue(withIdentifier: "LoginView", sender: self);
    }
    
    
    @IBAction func ListaViewButton(_ animated: Bool)
    {
        self.performSegue(withIdentifier: "ListasSuper", sender: self);
    }
    
}

