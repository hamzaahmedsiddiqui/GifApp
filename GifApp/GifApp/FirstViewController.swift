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
   @IBOutlet var gifTitle: UILabel!
   @IBOutlet var gifUrl: UILabel!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.getRandomGif()
   }
   
   
   func getRandomGif(){
      Services.sharedInstance.getRandomGif { (data,error) in
         if let err = error  {
            print("\(err.localizedDescription)")
         }
         else
         {
            guard let data:ModelData = data else {return}
            let url = data.images?.fixedWidth?.url
            self.showRandomGif(urlGif: url!)
            
            guard data.title != nil else {return}
            self.setGifContent(gifTitle: data.title!, gifUrl: url!)
         }
      }
   }
   
   func setGifContent(gifTitle:String,gifUrl:String){
      self.gifTitle.text = gifTitle
      self.gifUrl.text = gifUrl
   }
   
   func showRandomGif(urlGif:String){
      let url = URL(string: urlGif)
      imageView.kf.setImage(with: url)
   }
}
