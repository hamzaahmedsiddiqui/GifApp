//
//	ModelRandom.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelRandom : Decodable {

	let data : ModelData?
	let meta : ModelMeta?

	enum CodingKeys: String, CodingKey {
		case data
		case meta
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		data = try values.decodeIfPresent(ModelData.self, forKey: .data)  //?? ModelData()
		meta = try values.decodeIfPresent(ModelMeta.self, forKey: .meta)  //?? ModelMeta()
	}

}
