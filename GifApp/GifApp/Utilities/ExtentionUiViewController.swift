//
//  ExtentionUiViewController.swift
//  GifApp
//
//  Created by hamza Ahmed on 30.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import Foundation
import UIKit

// MARK: Alert function in shared class
extension UIViewController {
   func showAlert(title: String, msg: String) {
      DispatchQueue.main.async {
         let alert = UIAlertController(title: title, message: msg, preferredStyle: .alert)
         alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
         self.present(alert, animated: true, completion: nil)
      }
   }
}
