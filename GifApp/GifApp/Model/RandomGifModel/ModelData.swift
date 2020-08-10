//
//	ModelData.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelData : Decodable {
   
   
   let images : ModelImage?
   let rating : String?
   let title : String?
   
   enum CodingKeys: String, CodingKey {
      
      case images
      case rating = "rating"
      case title = "title"
      
   }
   required init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: CodingKeys.self)
      
      images = try values.decodeIfPresent(ModelImage.self, forKey: .images)  //?? ModelImage()
      rating = try values.decodeIfPresent(String.self, forKey: .rating) ?? String()
      title = try values.decodeIfPresent(String.self, forKey: .title) ?? String()
      
   }
   
   
}
