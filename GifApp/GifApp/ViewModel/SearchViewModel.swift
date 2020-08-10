//
//  SearchViewModel.swift
//  GifApp
//
//  Created by hamza Ahmed on 08.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit

class SearchViewModel: NSObject {
   var stilGifUrl:String?
   var gifUrl:String?
   var gifTitle:String?
   var gifPg:String?
   
   
   init(data:ModelSearchData) {
      self.stilGifUrl = data.images?.fixedWidthStill?.url ?? ""
      self.gifTitle = data.title ?? ""
      self.gifPg = data.rating ?? ""
      self.gifUrl = data.images?.fixedWidth?.url ?? ""
    
   }
}
