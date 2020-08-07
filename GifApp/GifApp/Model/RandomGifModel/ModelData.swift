//
//	ModelData.swift
//
//	Create by hamza Ahmed on 7/8/2020
//	Copyright © 2020. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

class ModelData : Decodable {

	let bitlyGifUrl : String?
	let bitlyUrl : String?
	let caption : String?
	let contentUrl : String?
	let embedUrl : String?
	let fixedHeightDownsampledHeight : String?
	let fixedHeightDownsampledUrl : String?
	let fixedHeightDownsampledWidth : String?
	let fixedHeightSmallHeight : String?
	let fixedHeightSmallStillUrl : String?
	let fixedHeightSmallUrl : String?
	let fixedHeightSmallWidth : String?
	let fixedWidthDownsampledHeight : String?
	let fixedWidthDownsampledUrl : String?
	let fixedWidthDownsampledWidth : String?
	let fixedWidthSmallHeight : String?
	let fixedWidthSmallStillUrl : String?
	let fixedWidthSmallUrl : String?
	let fixedWidthSmallWidth : String?
	let id : String?
	let imageFrames : String?
	let imageHeight : String?
	let imageMp4Url : String?
	let imageOriginalUrl : String?
	let imageUrl : String?
	let imageWidth : String?
	let images : ModelImage?
	let importDatetime : String?
	let isSticker : Int?
	let rating : String?
	let slug : String?
	let source : String?
	let sourcePostUrl : String?
	let sourceTld : String?
	let title : String?
	let trendingDatetime : String?
	let type : String?
	let url : String?
	let username : String?


	enum CodingKeys: String, CodingKey {
		case bitlyGifUrl = "bitly_gif_url"
		case bitlyUrl = "bitly_url"
		case caption = "caption"
		case contentUrl = "content_url"
		case embedUrl = "embed_url"
		case fixedHeightDownsampledHeight = "fixed_height_downsampled_height"
		case fixedHeightDownsampledUrl = "fixed_height_downsampled_url"
		case fixedHeightDownsampledWidth = "fixed_height_downsampled_width"
		case fixedHeightSmallHeight = "fixed_height_small_height"
		case fixedHeightSmallStillUrl = "fixed_height_small_still_url"
		case fixedHeightSmallUrl = "fixed_height_small_url"
		case fixedHeightSmallWidth = "fixed_height_small_width"
		case fixedWidthDownsampledHeight = "fixed_width_downsampled_height"
		case fixedWidthDownsampledUrl = "fixed_width_downsampled_url"
		case fixedWidthDownsampledWidth = "fixed_width_downsampled_width"
		case fixedWidthSmallHeight = "fixed_width_small_height"
		case fixedWidthSmallStillUrl = "fixed_width_small_still_url"
		case fixedWidthSmallUrl = "fixed_width_small_url"
		case fixedWidthSmallWidth = "fixed_width_small_width"
		case id = "id"
		case imageFrames = "image_frames"
		case imageHeight = "image_height"
		case imageMp4Url = "image_mp4_url"
		case imageOriginalUrl = "image_original_url"
		case imageUrl = "image_url"
		case imageWidth = "image_width"
		case images 
		case importDatetime = "import_datetime"
		case isSticker = "is_sticker"
		case rating = "rating"
		case slug = "slug"
		case source = "source"
		case sourcePostUrl = "source_post_url"
		case sourceTld = "source_tld"
		case title = "title"
		case trendingDatetime = "trending_datetime"
		case type = "type"
		case url = "url"
		case username = "username"
	}
	required init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		bitlyGifUrl = try values.decodeIfPresent(String.self, forKey: .bitlyGifUrl) ?? String()
		bitlyUrl = try values.decodeIfPresent(String.self, forKey: .bitlyUrl) ?? String()
		caption = try values.decodeIfPresent(String.self, forKey: .caption) ?? String()
		contentUrl = try values.decodeIfPresent(String.self, forKey: .contentUrl) ?? String()
		embedUrl = try values.decodeIfPresent(String.self, forKey: .embedUrl) ?? String()
		fixedHeightDownsampledHeight = try values.decodeIfPresent(String.self, forKey: .fixedHeightDownsampledHeight) ?? String()
		fixedHeightDownsampledUrl = try values.decodeIfPresent(String.self, forKey: .fixedHeightDownsampledUrl) ?? String()
		fixedHeightDownsampledWidth = try values.decodeIfPresent(String.self, forKey: .fixedHeightDownsampledWidth) ?? String()
		fixedHeightSmallHeight = try values.decodeIfPresent(String.self, forKey: .fixedHeightSmallHeight) ?? String()
		fixedHeightSmallStillUrl = try values.decodeIfPresent(String.self, forKey: .fixedHeightSmallStillUrl) ?? String()
		fixedHeightSmallUrl = try values.decodeIfPresent(String.self, forKey: .fixedHeightSmallUrl) ?? String()
		fixedHeightSmallWidth = try values.decodeIfPresent(String.self, forKey: .fixedHeightSmallWidth) ?? String()
		fixedWidthDownsampledHeight = try values.decodeIfPresent(String.self, forKey: .fixedWidthDownsampledHeight) ?? String()
		fixedWidthDownsampledUrl = try values.decodeIfPresent(String.self, forKey: .fixedWidthDownsampledUrl) ?? String()
		fixedWidthDownsampledWidth = try values.decodeIfPresent(String.self, forKey: .fixedWidthDownsampledWidth) ?? String()
		fixedWidthSmallHeight = try values.decodeIfPresent(String.self, forKey: .fixedWidthSmallHeight) ?? String()
		fixedWidthSmallStillUrl = try values.decodeIfPresent(String.self, forKey: .fixedWidthSmallStillUrl) ?? String()
		fixedWidthSmallUrl = try values.decodeIfPresent(String.self, forKey: .fixedWidthSmallUrl) ?? String()
		fixedWidthSmallWidth = try values.decodeIfPresent(String.self, forKey: .fixedWidthSmallWidth) ?? String()
		id = try values.decodeIfPresent(String.self, forKey: .id) ?? String()
		imageFrames = try values.decodeIfPresent(String.self, forKey: .imageFrames) ?? String()
		imageHeight = try values.decodeIfPresent(String.self, forKey: .imageHeight) ?? String()
		imageMp4Url = try values.decodeIfPresent(String.self, forKey: .imageMp4Url) ?? String()
		imageOriginalUrl = try values.decodeIfPresent(String.self, forKey: .imageOriginalUrl) ?? String()
		imageUrl = try values.decodeIfPresent(String.self, forKey: .imageUrl) ?? String()
		imageWidth = try values.decodeIfPresent(String.self, forKey: .imageWidth) ?? String()
		images = try values.decodeIfPresent(ModelImage.self, forKey: .images)  //?? ModelImage()
		importDatetime = try values.decodeIfPresent(String.self, forKey: .importDatetime) ?? String()
		isSticker = try values.decodeIfPresent(Int.self, forKey: .isSticker) ?? Int()
		rating = try values.decodeIfPresent(String.self, forKey: .rating) ?? String()
		slug = try values.decodeIfPresent(String.self, forKey: .slug) ?? String()
		source = try values.decodeIfPresent(String.self, forKey: .source) ?? String()
		sourcePostUrl = try values.decodeIfPresent(String.self, forKey: .sourcePostUrl) ?? String()
		sourceTld = try values.decodeIfPresent(String.self, forKey: .sourceTld) ?? String()
		title = try values.decodeIfPresent(String.self, forKey: .title) ?? String()
		trendingDatetime = try values.decodeIfPresent(String.self, forKey: .trendingDatetime) ?? String()
		type = try values.decodeIfPresent(String.self, forKey: .type) ?? String()
		url = try values.decodeIfPresent(String.self, forKey: .url) ?? String()
		username = try values.decodeIfPresent(String.self, forKey: .username) ?? String()
	}


}
