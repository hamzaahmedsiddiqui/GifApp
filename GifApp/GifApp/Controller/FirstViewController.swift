//
//  FirstViewController.swift
//  GifApp
//
//  Created by hamza Ahmed on 07.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit
import Kingfisher

class FirstViewController: UIViewController {
   @IBOutlet var imageView: UIImageView!
   @IBOutlet var pgImage: UIImageView!
   @IBOutlet var gifTitle: UILabel!
   @IBOutlet var gifUrl: UILabel!
   @IBOutlet var activityIndicator: UIActivityIndicatorView!
   //  @IBOutlet var SearchView: UIView!
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.getRandomGif()  //getting random gif
   }
   
}



// MARK: getting data
extension FirstViewController{
   
   
   //function for getting random gif from api
   func getRandomGif(){
      self.activityIndicator.startAnimating()
      Services.sharedInstance.getRandomGif { (data,error) in
         if let err = error  {
            print("\(err.localizedDescription)")
            self.showAlert(title:err.localizedDescription,msg:"")
         }
         else
         {
            let randomGifData = FirstViewModel(data: data!)
            let url = randomGifData.gifUrl ?? ""
            let title = randomGifData.gifTitle ?? ""
            let pgRating = randomGifData.gifPg ?? ""
            DispatchQueue.main.async {
               self.showRandomGif(urlGif: url)
               self.setGifContent(gifTitle: title, gifUrl: url,pg:pgRating)
            }
         }
      }
   }
   
   // function for showing gif content
   func setGifContent(gifTitle:String,gifUrl:String,pg:String){
      self.gifTitle.text = gifTitle
      self.gifUrl.text = gifUrl
      var image:UIImage?
      switch pg {
      case pgEnum.pg13.rawValue:
         image = UIImage(named: Constants.pg13)
      case pgEnum.r.rawValue:
         image = UIImage(named: Constants.r)
      default:
         image = UIImage(named: Constants.pg)
      }
      pgImage.image = image
   }
   
   // showing gif image
   func showRandomGif(urlGif:String){
      let url = URL(string: urlGif)
      imageView.kf.setImage(with: url)
      self.activityIndicator.stopAnimating()
      self.activityIndicator.isHidden = true
   }
}
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
