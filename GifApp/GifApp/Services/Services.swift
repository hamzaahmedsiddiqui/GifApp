//
//  Services.swift
//  GifApp
//
//  Created by hamza Ahmed on 06.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import Foundation

class Services: NSObject {
   
   static let sharedInstance = Services()
   var apiKey:String {
      get {
         return valueForAPIKey(named:"API_KEY")
      }
   }
   private override init() {}
   // MARK: api call function for getting ramdom gif from API
   func getRandomGif(completion: @escaping (ModelData?, Error?) ->()){
      let dataTask: URLSessionDataTask?
      let urlString = Constants.baseUrl + Constants.randomGifUrl //creating url to request data
      guard let url = URL(string: urlString) else {return}
      var request:URLRequest = URLRequest(url: url)
      request.httpMethod = "GET"
      request.allHTTPHeaderFields = ["api_key": apiKey]
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
                  let decoder = JSONDecoder()
                  decoder.keyDecodingStrategy = .convertFromSnakeCase
                  let result = try decoder.decode(ModelRandom.self, from: data)
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
   // MARK: api call function for search
   func searchGif(_ searchText:String, completion:@escaping ([ModelSearchData]?, Error?) ->())
   {
      var dataTask: URLSessionDataTask?
      let parameters = ["api_key": apiKey,"q":searchText]
      let url = Constants.baseUrl + Constants.searchUrl //creating url to request data
      
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
                  let decoder = JSONDecoder()
                  decoder.keyDecodingStrategy = .convertFromSnakeCase
                  let result = try decoder.decode(ModelSearch.self, from: data)
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
   private func valueForAPIKey(named keyname:String) -> String {
      // Credit to the original source for this technique at
      let filePath = Bundle.main.path(forResource: "ApiKeys", ofType: "plist")
      let plist = NSDictionary(contentsOfFile:filePath!)
      let value = plist?.object(forKey: keyname) as! String
      return value
   }
}
