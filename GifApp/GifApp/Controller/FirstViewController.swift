//
//  FirstViewController.swift
//  GifApp
//
//  Created by hamza Ahmed on 07.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit
import Kingfisher

final class FirstViewController: UIViewController {
   @IBOutlet var imageView: UIImageView!
   @IBOutlet var pgImage: UIImageView!
   @IBOutlet var gifTitle: UILabel!
   @IBOutlet var gifUrl: UILabel!
   @IBOutlet var activityIndicator: UIActivityIndicatorView!
   //  @IBOutlet var SearchView: UIView!
   
   
   override func viewDidLoad()
   {
      super.viewDidLoad()
      self.getRandomGif()  //getting random gif
   }
   
}

// MARK: getting data
extension FirstViewController{
   
   //function for getting random gif from api
  private func getRandomGif(){
      activityIndicator.startAnimating()
      Services.sharedInstance.getRandomGif {[weak self](data,error) in
         if let err = error {
            print("\(err.localizedDescription)")
            self?.showAlert(title:err.localizedDescription,msg:"")
         }
         else
         {
            let randomGifData = FirstViewModel(gifUrl: data?.images?.fixedWidth?.url, gifTitle: data?.title, gifPg: data?.rating)
            let url = randomGifData.gifUrl ?? ""
            let title = randomGifData.gifTitle ?? ""
            let pgRating = randomGifData.gifPg ?? ""
            DispatchQueue.main.async {
               self?.showRandomGif(urlGif: url)
               self?.setGifContent(gifTitle: title, gifUrl: url,pg:pgRating)
            }
         }
      }
   }
   
   // function for showing gif content
   private func setGifContent(gifTitle:String,gifUrl:String,pg:String){
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
   private func showRandomGif(urlGif:String){
      let url = URL(string: urlGif)
      imageView.kf.setImage(with: url)
      activityIndicator.stopAnimating()
      activityIndicator.isHidden = true
   }
}
