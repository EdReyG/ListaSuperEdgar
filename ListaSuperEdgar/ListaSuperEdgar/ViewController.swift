//
//  ViewController.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 11/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.performSegue(withIdentifier: "LoginView", sender: self);
        
        //GoogleMaps
        GMSServices.provideAPIKey("AIzaSyDbM_vXXTCswNPRGyuQqholjN_X8qhd1rM")
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.868,
                                              longitude:151.2086, zoom:6)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera:camera)
        let marker = GMSMarker()
        
        marker.position = camera.target
        marker.snippet = "Hello World"
        //marker.appearAnimation = kGMSMarkerAnimationPop
        marker.map = mapView
        
        self.view = mapView
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    

}

