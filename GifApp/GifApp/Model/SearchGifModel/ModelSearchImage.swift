//
//	ModelSearchImage.swift
//
//	Create by hamza Ahmed on 8/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelSearchImage : Decodable {

	let fixedWidth : ModelFixedHeight?
	let fixedWidthStill : ModelSearchStill?


	enum CodingKeys: String, CodingKey {

		case fixedWidth = "fixed_height"
		case fixedWidthStill = "fixed_width_still"

	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		fixedWidth = try values.decodeIfPresent(ModelFixedHeight.self, forKey: .fixedWidth)  //?? ModelFixedHeight()
		fixedWidthStill = try values.decodeIfPresent(ModelSearchStill.self, forKey: .fixedWidthStill)  //??
	}


}
