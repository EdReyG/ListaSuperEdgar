//
//  MapViewController.swift
//  ListaSuperEdgar
//
//  Created by Edgar Reyes on 13/08/17.
//  Copyright © 2017 EJRG. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController
{
    let locationManager = CLLocationManager()
    let didFindMyLocation = false

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        GMSServices.provideAPIKey("AIzaSyDbM_vXXTCswNPRGyuQqholjN_X8qhd1rM")
        // Do any additional setup after loading the view.
        let camera = GMSCameraPosition.camera(withLatitude: -33.868,                                            longitude:151.2086, zoom:6)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera:camera)
        mapView.isMyLocationEnabled = true
        let marker = GMSMarker()
        
        marker.position = camera.target
        marker.snippet = "Bienvenido"
        //marker.appearAnimation = kGMSMarkerAnimationPop
        marker.map = mapView
        
        self.view = mapView
        //self.mapView?.myLocationEnabled = true
        
        let mapInsets = UIEdgeInsets(top: 80.0, left: 0.0, bottom: 45.0, right: 0.0)
        mapView.padding = mapInsets
        
        //self.locationManager.delegate = self
        self.locationManager.startUpdatingLocation()    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Location Manager delegates
    /*func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.last
        
        //let camera = GMSCameraPosition.cameraWithLatitude((location?.coordinate.latitude)!, longitude: (location?.coordinate.longitude)!, zoom: 17.0)
        
        //self.mapView?.animateToCameraPosition(camera)
        
        
        self.locationManager.stopUpdatingLocation()
        
    }*/
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
