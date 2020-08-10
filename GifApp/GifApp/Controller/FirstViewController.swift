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



// getting data
extension FirstViewController{
   
   
   //function for getting random gif from api
   func getRandomGif(){
      self.activityIndicator.startAnimating()
      Services.sharedInstance.getRandomGif { (data,error) in
         if let err = error  {
            print("\(err.localizedDescription)")
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
      if pg == "pg-13"{
         image = UIImage(named: "pg13")
      }else if pg == "r"
      {
         image = UIImage(named: "r")
      }else
      {
         image = UIImage(named: "pg")
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
