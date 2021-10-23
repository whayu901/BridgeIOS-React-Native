//
//  Toast.swift
//  BridgeNative
//
//  Created by Wahyu Setiawan on 23/10/21.
//

import Foundation
import UIKit

@objc(Toast)
class Toast: UIView, RCTBridgeModule {
  
  static func moduleName() -> String!{
    return "MyAlert";
  }
  
  @objc static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  @objc func showToast(_ message : String, duration: Double) {
    
    let toastLabel = UILabel(frame: CGRect(x: self.frame.size.width/2 - 75, y: self.frame.size.height-100, width: 150, height: 35))
    toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    toastLabel.textColor = UIColor.white
    toastLabel.textAlignment = .center;
    toastLabel.text = message
    toastLabel.alpha = 1.0
    toastLabel.layer.cornerRadius = 10;
    toastLabel.clipsToBounds  =  true
    self.addSubview(toastLabel)
    UIView.animate(withDuration: duration, delay: 0.1, options: .curveEaseOut, animations: {
      toastLabel.alpha = 0.0
    }, completion: {(isCompleted) in
      toastLabel.removeFromSuperview()
    })
  }
}


