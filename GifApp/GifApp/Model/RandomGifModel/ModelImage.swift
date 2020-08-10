//
//	ModelImage.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelImage : Decodable {
   
   let fixedWidth : ModelFixedHeight?
   
   enum CodingKeys: String, CodingKey {
      
      case fixedWidth = "fixed_height"
      
   }
   required init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: CodingKeys.self)
      
      fixedWidth = try values.decodeIfPresent(ModelFixedHeight.self, forKey: .fixedWidth)  //?? ModelFixedHeight()
      
   }
}
