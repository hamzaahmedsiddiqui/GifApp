//
//  FirstViewModel.swift
//  GifApp
//
//  Created by hamza Ahmed on 08.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit

class FirstViewModel: NSObject {
   
   var gifUrl:String?
   var gifTitle:String?
   var gifPg:String?
   
   
   init(data:ModelData) {
      self.gifUrl = data.images?.fixedWidth?.url
      self.gifTitle = data.title
      self.gifPg = data.rating
   }

}
