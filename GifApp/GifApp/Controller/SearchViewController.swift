//
//  SearchViewController.swift
//  GifApp
//
//  Created by hamza Ahmed on 08.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit
import Kingfisher

final class SearchViewController: UIViewController {
   
   @IBOutlet weak var gifCollectionView: UICollectionView!
   var arrGif = [SearchViewModel]()
   
   override func viewDidLoad() {
      super.viewDidLoad()
   }
   
  private func getSearchGifData(searchText:String){
      Services.sharedInstance.searchGif(searchText){ [weak self](data,error) in
         if let err = error{
            print(err.localizedDescription)
            self?.showAlert(title:err.localizedDescription,msg:"")
         }else{
            self?.arrGif =  data?.map({return SearchViewModel(data:$0)}) ?? []
            DispatchQueue.main.async {
               self?.gifCollectionView.reloadData()
            }
         }
      }
   }
}

// MARK: search protocol function implement
extension SearchViewController: searchProtocol{
   func searchFunctionCall(searchText: String) {
      //getting data with search
      getSearchGifData(searchText: searchText)
      
   }
}

// MARK: collection view delegates and datasource
extension SearchViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
   
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return arrGif.count
   }
   
   func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      let cellwidth = self.view.frame.width/3 - 5
      
      return CGSize(width: cellwidth, height: cellwidth)
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.gifCellIdentifier, for: indexPath) as! GifCollectionViewCell
      let gifData =  arrGif[indexPath.row]
      cell.configCell(cellModel: gifData)
     
      return cell
   }
   
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      let indexSelected = indexPath.row
      let gifDetail =  arrGif[indexSelected]
      goToGifDetailVC(data: gifDetail)
   }
   
   private func goToGifDetailVC(data : SearchViewModel){
      let sb = Utilities.getStoryboard(name: Storyboards.main.rawValue)
      let vc = sb.instantiateViewController(identifier: ViewControllers.gifDetailViewController.rawValue) as! GifDetailViewController
      vc.gifDetail = data
      self.navigationController?.pushViewController(vc, animated: true)
   }
}




