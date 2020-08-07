//
//	ModelDownsizedSmall.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelDownsizedSmall : Decodable {

	let height : String?
	let mp4 : String?
	let mp4Size : String?
	let width : String?


	enum CodingKeys: String, CodingKey {
		case height = "height"
		case mp4 = "mp4"
		case mp4Size = "mp4_size"
		case width = "width"
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		height = try values.decodeIfPresent(String.self, forKey: .height) ?? String()
		mp4 = try values.decodeIfPresent(String.self, forKey: .mp4) ?? String()
		mp4Size = try values.decodeIfPresent(String.self, forKey: .mp4Size) ?? String()
		width = try values.decodeIfPresent(String.self, forKey: .width) ?? String()
	}


}
