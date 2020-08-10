//
//  SearchViewController.swift
//  GifApp
//
//  Created by hamza Ahmed on 08.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit
import Kingfisher

class SearchViewController: UIViewController {
   
   
   @IBOutlet var gifCollectionView: UICollectionView!
  
   var searchText = ""

   var arrGif = [SearchViewModel]()
   var gifDetail:SearchViewModel?
   
   override func viewDidLoad() {
      super.viewDidLoad()
   
   }
   
   override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(true)
      
   }
   
   
   func getSearchGifData(searchText:String){
      Services.sharedInstance.searchGif(searchText){ (data,error) in
         if let err = error{
            print(err.localizedDescription)
         }else{
            
            self.arrGif =  data?.map({return SearchViewModel(data:$0)}) ?? []
            print(self.arrGif.count) 
            DispatchQueue.main.async {
            
                  self.gifCollectionView.reloadData()

               
            }
         }
      }
   }
   
   //segue function (exporting data to other view)
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == gifDetailSegue {
       let detail = segue.destination as! GifDetailViewController
      detail.gifDetail = gifDetail
     }
   }
}


//search protocol function implement
extension SearchViewController:searchProtocol{
   func searchFunctionCall(searchText: String) {
      print(searchText)
      
      //getting data with search
      getSearchGifData(searchText: searchText)
      
   }
}


//collection view delegates
extension SearchViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
   
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return self.arrGif.count
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
      let cellwidth = self.view.frame.width/3 - 5
      return CGSize(width: cellwidth, height: cellwidth)
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gifCellIdentifier, for: indexPath) as! GifCollectionViewCell
 
      
      let gifData =  arrGif[indexPath.row]
      let stillUrl = URL(string: gifData.stilGifUrl!)
      cell.stillGifImage.kf.setImage(with: stillUrl)
      return cell
   }
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      let indexSelected = indexPath.row
      gifDetail =  arrGif[indexSelected]
      
      self.performSegue(withIdentifier: gifDetailSegue, sender: nil)
      
   }
   
}




