//
//  MasterViewController.swift
//  GifApp
//
//  Created by hamza Ahmed on 08.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit
protocol searchProtocol {
   func searchFunctionCall(searchText:String)
}
class MasterViewController: UIViewController {
   
   @IBOutlet weak var searchBar: UISearchBar!
   @IBOutlet weak var customView: UIView!
   var searchVC : SearchViewController!
   var firstVC: FirstViewController!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      addingChildVC()
   }
   
}
// MARK: adding child view controller
extension MasterViewController{
   func addingChildVC(){
      let storyboard = Utilities.getStoryboard(name: Storyboards.main.rawValue)
      searchVC = storyboard.instantiateViewController(identifier: ViewControllers.searchViewController.rawValue)
      firstVC = storyboard.instantiateViewController(identifier: ViewControllers.firstViewController.rawValue)
      Utilities.addViewControllerAsChildViewController(searchVC, parentVC: self, yConstraint: 0, heightConstraint: self.customView.frame.height, parentCustomView: customView)
      Utilities.addViewControllerAsChildViewController(firstVC, parentVC: self, yConstraint: 0, heightConstraint: self.customView.frame.height, parentCustomView: customView)
      searchBar.delegate = self
   }
   
}



// MARK: search bar delegates
extension MasterViewController:UISearchBarDelegate{
   func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
      searchVC.view.isHidden = false
      firstVC.view.isHidden = true
      searchBar.showsCancelButton = true
   }
   
   func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
      searchBar.showsCancelButton = false
      searchVC.view.isHidden = true
      firstVC.view.isHidden = false
      searchBar.resignFirstResponder()
   }
   func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      let searchTextCount =  searchText.count
      if(searchTextCount % 2 == 0) || (searchTextCount == 0) {
         searchVC.searchFunctionCall(searchText: searchText)
      }
   }
   func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
      searchBar.resignFirstResponder()
      searchVC.searchFunctionCall(searchText: searchBar.text ?? "")
   }
}
