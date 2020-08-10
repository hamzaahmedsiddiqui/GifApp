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



// MARK: setting data
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
      switch pg {
      case pgEnum.pg13.rawValue:
         image = UIImage(named: Constants.pg13)
      case pgEnum.r.rawValue:
         image = UIImage(named: Constants.r)
      default:
         image = UIImage(named: Constants.pg)
      }
      
      pgImage.image = image!
      activityIndicator.stopAnimating()
      self.activityIndicator.isHidden = true
   }
   
}
