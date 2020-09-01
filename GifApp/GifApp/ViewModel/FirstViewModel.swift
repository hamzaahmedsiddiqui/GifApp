//
//  FirstViewModel.swift
//  GifApp
//
//  Created by hamza Ahmed on 08.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit

class FirstViewModel: NSObject {
   
   let gifUrl:String?
   let gifTitle:String?
   let gifPg:String?
   
   
   init(data:ModelData) {
      gifUrl = data.images?.fixedWidth?.url
      gifTitle = data.title
      gifPg = data.rating
   }

}
