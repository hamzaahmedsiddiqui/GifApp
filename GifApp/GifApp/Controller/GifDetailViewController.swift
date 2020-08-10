//
//  GifDetailViewController.swift
//  GifApp
//
//  Created by hamza Ahmed on 10.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit
import Kingfisher

class GifDetailViewController: UIViewController {
   @IBOutlet var imageView: UIImageView!
   @IBOutlet var pgImage: UIImageView!
   @IBOutlet var gifTitle: UILabel!
   @IBOutlet var gifUrl: UILabel!
   @IBOutlet var activityIndicator: UIActivityIndicatorView!
   var gifDetail:SearchViewModel? //getting data from previous vc
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.activityIndicator.startAnimating()
      gifDetailSetup()
   }
   
}



// setting data
extension GifDetailViewController{
   func gifDetailSetup(){
      //setting navigation title
      let title = gifDetail?.gifTitle ?? ""
      navigationItem.title = title
      
      
      //setting image
      let urlString =  gifDetail?.gifUrl ?? ""
      let url = URL(string:urlString)
      imageView.kf.setImage(with: url)
      
      // setting  title label
      gifTitle.text = title
      
      // setting url label
      gifUrl.text = urlString
      
      // setting pg image
      let pg = gifDetail?.gifPg
      var image:UIImage?
      if pg == "pg-13"{
         image = UIImage(named: "pg13")
      }else if pg == "r"
      {
         image = UIImage(named: "r")
      }else
      {
         image = UIImage(named: "pg")
      }
      pgImage.image = image!
      activityIndicator.stopAnimating()
      self.activityIndicator.isHidden = true
   }
   
}
