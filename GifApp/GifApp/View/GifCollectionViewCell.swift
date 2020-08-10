//
//  GifCollectionViewCell.swift
//  GifApp
//
//  Created by hamza Ahmed on 09.08.20.
//  Copyright © 2020 Hamza. All rights reserved.
//

import UIKit

class GifCollectionViewCell: UICollectionViewCell {
   @IBOutlet weak var stillGifImage: UIImageView!
   
   func configCell(cellModel : SearchViewModel){
      let stillUrl = URL(string: cellModel.stilGifUrl!)
      self.stillGifImage.kf.setImage(with: stillUrl)
   }
}
