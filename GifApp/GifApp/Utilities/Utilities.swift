//
//  Utilities.swift
//  GifApp
//
//  Created by hamza Ahmed on 09.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit
class Utilities{
   
   static func getStoryboard(name: String)-> UIStoryboard{
      return UIStoryboard.init(name: name, bundle: nil)
   }
   static func addViewControllerAsChildViewController(_ childVC : UIViewController, parentVC : UIViewController, yConstraint: CGFloat,heightConstraint: CGFloat,parentCustomView:UIView){
       parentVC.addChild(childVC)
      
      parentCustomView.addSubview(childVC.view)
       childVC.view.frame = CGRect(x: parentVC.view.bounds.origin.x, y: yConstraint, width: parentCustomView.frame.width, height: heightConstraint)
     //  childVC.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
       childVC.didMove(toParent: parentVC)
   }
   
   
   static func alertView(title:String, message:String, VC:UIViewController)
   {
      
      let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

      alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

      VC.present(alert, animated: true, completion: nil)
   }
}
