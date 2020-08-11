//
//	ModelSearchData.swift
//
//	Create by hamza Ahmed on 8/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelSearchData : Decodable {
   
   
   let images : ModelSearchImage?
   let rating : String?
   let title : String?
   
   enum CodingKeys: String, CodingKey {
      
      case images
      
      case rating = "rating"
      case title = "title"
      case url = "url"
      
   }
   required init(from decoder: Decoder) throws {
      let values = try decoder.container(keyedBy: CodingKeys.self)
      
      images = try values.decodeIfPresent(ModelSearchImage.self, forKey: .images)  //?? ModelSearchImage()
      rating = try values.decodeIfPresent(String.self, forKey: .rating) ?? String()
      title = try values.decodeIfPresent(String.self, forKey: .title) ?? String()
      
   }

}
