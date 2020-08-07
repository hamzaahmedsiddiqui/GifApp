//
//	ModelLooping.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelLooping : Decodable {

	let mp4 : String?
	let mp4Size : String?


	enum CodingKeys: String, CodingKey {
		case mp4 = "mp4"
		case mp4Size = "mp4_size"
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		mp4 = try values.decodeIfPresent(String.self, forKey: .mp4) ?? String()
		mp4Size = try values.decodeIfPresent(String.self, forKey: .mp4Size) ?? String()
	}


}
