//
//	ModelSearchSearch.swift
//
//	Create by hamza Ahmed on 8/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelSearch : Decodable {

	let data : [ModelSearchData]?
	let meta : ModelSearchMeta?
	let pagination : ModelSearchPagination?


	enum CodingKeys: String, CodingKey {
		case data = "data"
		case meta
		case pagination
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		data = try values.decodeIfPresent([ModelSearchData].self, forKey: .data) ?? [ModelSearchData]()
		meta = try values.decodeIfPresent(ModelSearchMeta.self, forKey: .meta)  //?? ModelSearchMeta()
		pagination = try values.decodeIfPresent(ModelSearchPagination.self, forKey: .pagination)  //?? ModelSearchPagination()
	}


}
