//
//  SearchViewModel.swift
//  GifApp
//
//  Created by hamza Ahmed on 08.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import Foundation

struct SearchViewModel {
   let stilGifUrl:String?
   let gifUrl:String?
   let gifTitle:String?
   let gifPg:String?
   
   
   init(data:ModelSearchData) {
      stilGifUrl = data.images?.fixedWidthStill?.url ?? ""
      gifTitle = data.title ?? ""
      gifPg = data.rating ?? ""
      gifUrl = data.images?.fixedWidth?.url ?? ""
    
   }
}
