//
//  ViewController.swift
//  MapView
//
//  Created by EnGiS_Spencer on 2022/10/04.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var myMap: MKMapView!
    @IBOutlet var lbLocation1: UILabel!
    @IBOutlet var lbLocation2: UILabel!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        lbLocation1.text = ""
        lbLocation2.text = ""
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest   // 위치 정확도 최대
        locationManager.requestWhenInUseAuthorization() // 위치 데이터 사용자 승인 요청
        locationManager.startUpdatingHeading()  // 위치 정보 업데이트
        myMap.showsUserLocation = true  // 현재 위치 보여주기
    }

    @IBAction func segChnageLocation(_ sender: UISegmentedControl) {
        
        
    }
    
}

