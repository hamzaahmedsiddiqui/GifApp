//
//	ModelSearchSearch.swift
//
//	Create by hamza Ahmed on 8/8/2020
//	Copyright © 2020. All rights reserved.

import Foundation

struct ModelSearch : Decodable {

	let data : [ModelSearchData]?
	let meta : ModelSearchMeta?
	let pagination : ModelSearchPagination?
}
