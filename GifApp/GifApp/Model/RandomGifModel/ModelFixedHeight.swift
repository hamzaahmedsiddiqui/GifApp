//
//	ModelFixedHeight.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelFixedHeight : Decodable {

	let height : String?
	let mp4 : String?
	let mp4Size : String?
	let size : String?
	let url : String?
	let webp : String?
	let webpSize : String?
	let width : String?


	enum CodingKeys: String, CodingKey {
		case height = "height"
		case mp4 = "mp4"
		case mp4Size = "mp4_size"
		case size = "size"
		case url = "url"
		case webp = "webp"
		case webpSize = "webp_size"
		case width = "width"
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		height = try values.decodeIfPresent(String.self, forKey: .height) ?? String()
		mp4 = try values.decodeIfPresent(String.self, forKey: .mp4) ?? String()
		mp4Size = try values.decodeIfPresent(String.self, forKey: .mp4Size) ?? String()
		size = try values.decodeIfPresent(String.self, forKey: .size) ?? String()
		url = try values.decodeIfPresent(String.self, forKey: .url) ?? String()
		webp = try values.decodeIfPresent(String.self, forKey: .webp) ?? String()
		webpSize = try values.decodeIfPresent(String.self, forKey: .webpSize) ?? String()
		width = try values.decodeIfPresent(String.self, forKey: .width) ?? String()
	}


}
