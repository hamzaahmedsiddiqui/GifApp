//
//	ModelSearchMeta.swift
//
//	Create by hamza Ahmed on 8/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

class ModelSearchMeta : Decodable {

	let msg : String?
	let responseId : String?
	let status : Int?


	enum CodingKeys: String, CodingKey {
		case msg = "msg"
		case responseId = "response_id"
		case status = "status"
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		msg = try values.decodeIfPresent(String.self, forKey: .msg) ?? String()
		responseId = try values.decodeIfPresent(String.self, forKey: .responseId) ?? String()
		status = try values.decodeIfPresent(Int.self, forKey: .status) ?? Int()
	}


}
