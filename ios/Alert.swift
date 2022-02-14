//
//  Text.swift
//  BridgeNative
//
//  Created by Wahyu Setiawan on 19/10/21.
//

import Foundation
import UIKit

@objc(MyAlert)

class MyAlert: NSObject, RCTBridgeModule{
    
  static func moduleName() -> String!{
    return "MyAlert";
  }
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc func ShowMessage(_ message:NSString, duration:Double) -> Void {
    let alert = UIAlertController(title:nil, message: message as String, preferredStyle: .alert);
    let seconds:Double = duration;
    alert.view.backgroundColor = .white
    alert.view.layer.cornerRadius = 10
    
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as? AppDelegate)?.window.rootViewController?.present(alert, animated: true, completion: nil);
    }
    
    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + seconds, execute: {
      alert.dismiss(animated: true, completion: nil);
    })
  }
}
