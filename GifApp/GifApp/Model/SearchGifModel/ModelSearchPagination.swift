//
//	ModelSearchPagination.swift
//
//	Create by hamza Ahmed on 8/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelSearchPagination : Decodable {

	let count : Int?
	let offset : Int?
	let totalCount : Int?


	enum CodingKeys: String, CodingKey {
		case count = "count"
		case offset = "offset"
		case totalCount = "total_count"
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		count = try values.decodeIfPresent(Int.self, forKey: .count) ?? Int()
		offset = try values.decodeIfPresent(Int.self, forKey: .offset) ?? Int()
		totalCount = try values.decodeIfPresent(Int.self, forKey: .totalCount) ?? Int()
	}


}
