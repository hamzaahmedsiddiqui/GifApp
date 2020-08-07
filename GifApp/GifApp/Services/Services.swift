//
//  Services.swift
//  GifApp
//
//  Created by hamza Ahmed on 06.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit

class Services: NSObject {
   
   static let sharedInstance = Services()
   
   func getRandomGif(completion: @escaping (ModelData?, Error?) ->()){
      let dataTask: URLSessionDataTask?
      let urlString = baseUrl + randomGifUrl //creating url to request data
      guard let url = URL(string: urlString) else {return}
      var request:URLRequest = URLRequest(url: url)
      //  request.httpMethod = "GET"
      request.allHTTPHeaderFields = ["api_key":api_key]
      print(url)
      dataTask = URLSession.shared.dataTask(with: request) { data,responce,error in
         
         if let err = error {
            DispatchQueue.main.async {
               completion(nil,err)
               print("Loading data error \(err.localizedDescription)")
            }
         }
         else
         {
            DispatchQueue.main.async {
               guard let data = data else {return}
               do
               {
                  let result = try JSONDecoder().decode(ModelRandom.self, from: data)
                  print(result.data!)
                  completion(result.data,error)
               }
               catch let jsonErr{
                  print("json error \(jsonErr.localizedDescription)")
               }
            }
         }
      }
      dataTask?.resume()
   }
}
