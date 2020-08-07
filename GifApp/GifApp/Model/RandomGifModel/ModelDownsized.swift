//
//	ModelDownsized.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelDownsized : Decodable {

	let height : String?
	let size : String?
	let url : String?
	let width : String?


	enum CodingKeys: String, CodingKey {
		case height = "height"
		case size = "size"
		case url = "url"
		case width = "width"
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		height = try values.decodeIfPresent(String.self, forKey: .height) ?? String()
		size = try values.decodeIfPresent(String.self, forKey: .size) ?? String()
		url = try values.decodeIfPresent(String.self, forKey: .url) ?? String()
		width = try values.decodeIfPresent(String.self, forKey: .width) ?? String()
	}


}
