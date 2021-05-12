//
//  ViewController.swift
//  AppTrackingTransparency_TEST
//
//  Created by 장기화 on 2021/05/05.
//

import UIKit
import AppTrackingTransparency
import AdSupport

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 14.0, *) {
            ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
                // Tracking authorization completed. Start loading ads here.
                // loadAd()
                DispatchQueue.main.async {
                    self.textField.text = ASIdentifierManager.shared().advertisingIdentifier.uuidString
                }
            })
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        label.text = ASIdentifierManager.shared().advertisingIdentifier.uuidString
    }
}
