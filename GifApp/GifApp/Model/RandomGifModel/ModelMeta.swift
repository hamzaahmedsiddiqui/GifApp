//
//	ModelMeta.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelMeta : Decodable {

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
