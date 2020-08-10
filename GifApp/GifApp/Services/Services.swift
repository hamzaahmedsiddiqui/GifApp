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
   
   
   // function for getting ramdom gif from API
   func getRandomGif(completion: @escaping (ModelData?, Error?) ->()){
      let dataTask: URLSessionDataTask?
      let urlString = baseUrl + randomGifUrl //creating url to request data
      guard let url = URL(string: urlString) else {return}
      var request:URLRequest = URLRequest(url: url)
      request.httpMethod = "GET"
      request.allHTTPHeaderFields = ["api_key":api_key]
      
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
   
   func searchGif(_ searchText:String, completion:@escaping ([ModelSearchData]?, Error?) ->())
   {
      var dataTask: URLSessionDataTask?
      let parameters = ["api_key":api_key,"q":searchText]
      let url = baseUrl + searchUrl //creating url to request data
      
      var components = URLComponents(string: url)!
      components.queryItems = parameters.map { (key, value) in
         URLQueryItem(name: key, value: value)
      }
      components.percentEncodedQuery = components.percentEncodedQuery?.replacingOccurrences(of: "+", with: "%2B")
      let request = URLRequest(url: components.url!)
      
      dataTask = URLSession.shared.dataTask(with: request) { data,responce,error in
         
         if let err = error {
            DispatchQueue.main.async {
               completion([],err)
               print("Loading data error \(err.localizedDescription)")
            }
         } else {
            DispatchQueue.main.async {
               guard let data = data else {return}
         
               do {
                  let result = try JSONDecoder().decode(ModelSearch.self, from: data)
                  completion(result.data,error)
               }
               catch let jsonErr {
                  print("json error \(jsonErr.localizedDescription)")
               }
               
            }
         }
      }
      dataTask?.resume()
   }
   
}
